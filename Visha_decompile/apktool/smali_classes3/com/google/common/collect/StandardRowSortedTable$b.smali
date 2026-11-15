.class public Lcom/google/common/collect/StandardRowSortedTable$b;
.super Lcom/google/common/collect/StandardTable$h;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardRowSortedTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/collect/StandardRowSortedTable;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/StandardRowSortedTable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/StandardRowSortedTable$b;->f:Lcom/google/common/collect/StandardRowSortedTable;

    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$h;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/StandardRowSortedTable;Lcom/google/common/collect/StandardRowSortedTable$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable$b;-><init>(Lcom/google/common/collect/StandardRowSortedTable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/StandardRowSortedTable$b;->f()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/StandardRowSortedTable$b;->f:Lcom/google/common/collect/StandardRowSortedTable;

    invoke-static {p0}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/util/SortedSet;
    .locals 1

    new-instance v0, Lcom/google/common/collect/Maps$n;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$n;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/StandardRowSortedTable$b;->f:Lcom/google/common/collect/StandardRowSortedTable;

    invoke-static {p0}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/util/SortedSet;
    .locals 0

    invoke-super {p0}, Lcom/google/common/collect/Maps$q;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    return-object p0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardRowSortedTable$b;->f:Lcom/google/common/collect/StandardRowSortedTable;

    invoke-static {v1}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/collect/StandardRowSortedTable$b;->f:Lcom/google/common/collect/StandardRowSortedTable;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable;->factory:Lw6a;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/StandardRowSortedTable;-><init>(Ljava/util/SortedMap;Lw6a;)V

    invoke-virtual {v0}, Lcom/google/common/collect/StandardRowSortedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/StandardRowSortedTable$b;->g()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/StandardRowSortedTable$b;->f:Lcom/google/common/collect/StandardRowSortedTable;

    invoke-static {p0}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardRowSortedTable$b;->f:Lcom/google/common/collect/StandardRowSortedTable;

    invoke-static {v1}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/collect/StandardRowSortedTable$b;->f:Lcom/google/common/collect/StandardRowSortedTable;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable;->factory:Lw6a;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/StandardRowSortedTable;-><init>(Ljava/util/SortedMap;Lw6a;)V

    invoke-virtual {v0}, Lcom/google/common/collect/StandardRowSortedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardRowSortedTable$b;->f:Lcom/google/common/collect/StandardRowSortedTable;

    invoke-static {v1}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/collect/StandardRowSortedTable$b;->f:Lcom/google/common/collect/StandardRowSortedTable;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable;->factory:Lw6a;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/StandardRowSortedTable;-><init>(Ljava/util/SortedMap;Lw6a;)V

    invoke-virtual {v0}, Lcom/google/common/collect/StandardRowSortedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method
