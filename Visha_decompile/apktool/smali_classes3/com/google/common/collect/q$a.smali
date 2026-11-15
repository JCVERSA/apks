.class public abstract Lcom/google/common/collect/q$a;
.super Lcom/google/common/collect/Multisets$c;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lcom/google/common/collect/p;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$c;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/q$a;->b:Lcom/google/common/collect/p;

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Lcom/google/common/collect/j;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/google/common/collect/p;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/q$a;->b:Lcom/google/common/collect/p;

    return-object p0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->comparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public first()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->firstEntry()Lcom/google/common/collect/j$a;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/j$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {p0, p1, v0}, Lcom/google/common/collect/p;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->elementSet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Multisets;->e(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public last()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->lastEntry()Lcom/google/common/collect/j$a;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/j$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    invoke-interface {p0, p1, v0, p2, v1}, Lcom/google/common/collect/p;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->elementSet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/q$a;->c()Lcom/google/common/collect/p;

    move-result-object p0

    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    invoke-interface {p0, p1, v0}, Lcom/google/common/collect/p;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/p;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/p;->elementSet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method
