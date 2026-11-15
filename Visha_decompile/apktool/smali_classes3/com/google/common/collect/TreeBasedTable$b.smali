.class public Lcom/google/common/collect/TreeBasedTable$b;
.super Lcom/google/common/collect/StandardTable$g;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeBasedTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public transient g:Ljava/util/SortedMap;

.field public final synthetic h:Lcom/google/common/collect/TreeBasedTable;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/common/collect/TreeBasedTable$b;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/TreeBasedTable$b;->h:Lcom/google/common/collect/TreeBasedTable;

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/StandardTable$g;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    .line 4
    iput-object p3, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/lang/Object;

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 6
    invoke-virtual {p0, p3, p4}, Lcom/google/common/collect/TreeBasedTable$b;->f(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 7
    :goto_1
    invoke-static {p0}, Lxd8;->d(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->g()Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->l()V

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->h:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$g;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Ljava/util/SortedMap;

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$g;->c:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/TreeBasedTable$b;->h:Lcom/google/common/collect/TreeBasedTable;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->columnComparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeBasedTable$b;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable$g;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->comparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$g;->d()V

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$g;->c:Ljava/util/Map;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public g()Ljava/util/SortedMap;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->l()V

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Ljava/util/SortedMap;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/lang/Object;

    if-eqz p0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public h()Ljava/util/SortedSet;
    .locals 1

    new-instance v0, Lcom/google/common/collect/Maps$n;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$n;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->k(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lxd8;->d(Z)V

    new-instance v0, Lcom/google/common/collect/TreeBasedTable$b;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->h:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/StandardTable$g;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/common/collect/TreeBasedTable$b;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public k(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/TreeBasedTable$b;->f(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/TreeBasedTable$b;->f(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->h()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->h:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$g;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->h:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$g;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    iput-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Ljava/util/SortedMap;

    :cond_1
    return-void
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$g;->d()V

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$g;->c:Ljava/util/Map;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->k(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lxd8;->d(Z)V

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardTable$g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lxd8;->d(Z)V

    new-instance v0, Lcom/google/common/collect/TreeBasedTable$b;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->h:Lcom/google/common/collect/TreeBasedTable;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$g;->b:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/common/collect/TreeBasedTable$b;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->k(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lxd8;->d(Z)V

    new-instance v0, Lcom/google/common/collect/TreeBasedTable$b;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->h:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/StandardTable$g;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/google/common/collect/TreeBasedTable$b;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
