.class public Lcom/google/common/collect/Maps$n;
.super Lcom/google/common/collect/Maps$l;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$l;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$n;->c()Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/util/SortedMap;
    .locals 0

    invoke-super {p0}, Lcom/google/common/collect/Maps$l;->b()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Ljava/util/SortedMap;

    return-object p0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$n;->c()Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public first()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$n;->c()Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    new-instance v0, Lcom/google/common/collect/Maps$n;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$n;->c()Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$n;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$n;->c()Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    new-instance v0, Lcom/google/common/collect/Maps$n;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$n;->c()Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$n;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    new-instance v0, Lcom/google/common/collect/Maps$n;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$n;->c()Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$n;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method
