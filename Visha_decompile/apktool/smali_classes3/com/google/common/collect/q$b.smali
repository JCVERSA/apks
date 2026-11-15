.class public Lcom/google/common/collect/q$b;
.super Lcom/google/common/collect/q$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/collect/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/q$a;-><init>(Lcom/google/common/collect/p;)V

    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    invoke-interface {p0, p1, v0}, Lcom/google/common/collect/p;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->firstEntry()Lcom/google/common/collect/j$a;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/q;->b(Lcom/google/common/collect/j$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/q$b;->descendingSet()Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 1

    new-instance v0, Lcom/google/common/collect/q$b;

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->descendingMultiset()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/q$b;-><init>(Lcom/google/common/collect/p;)V

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    invoke-interface {p0, p1, v0}, Lcom/google/common/collect/p;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->lastEntry()Lcom/google/common/collect/j$a;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/q;->b(Lcom/google/common/collect/j$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1

    new-instance v0, Lcom/google/common/collect/q$b;

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/p;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/q$b;-><init>(Lcom/google/common/collect/p;)V

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {p0, p1, v0}, Lcom/google/common/collect/p;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->firstEntry()Lcom/google/common/collect/j$a;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/q;->b(Lcom/google/common/collect/j$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {p0, p1, v0}, Lcom/google/common/collect/p;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->lastEntry()Lcom/google/common/collect/j$a;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/q;->b(Lcom/google/common/collect/j$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->pollFirstEntry()Lcom/google/common/collect/j$a;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/q;->b(Lcom/google/common/collect/j$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->pollLastEntry()Lcom/google/common/collect/j$a;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/q;->b(Lcom/google/common/collect/j$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1

    new-instance v0, Lcom/google/common/collect/q$b;

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-static {p4}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object p4

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/common/collect/p;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/q$b;-><init>(Lcom/google/common/collect/p;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1

    new-instance v0, Lcom/google/common/collect/q$b;

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/p;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/q$b;-><init>(Lcom/google/common/collect/p;)V

    return-object v0
.end method
