.class Lcom/google/common/collect/TreeRangeSet$e$a;
.super Lcom/google/common/collect/AbstractIterator;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeSet$e;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Lcom/google/common/collect/Cut;

.field final synthetic e:Lcom/google/common/collect/TreeRangeSet$e;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeSet$e;Ljava/util/Iterator;Lcom/google/common/collect/Cut;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$e$a;->c:Ljava/util/Iterator;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/common/collect/TreeRangeSet$e$a;->d:Lcom/google/common/collect/Cut;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$e$a;->e:Lcom/google/common/collect/TreeRangeSet$e;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$e$a;->d()Ljava/util/Map$Entry;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected d()Ljava/util/Map$Entry;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$e$a;->c:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->b()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/Map$Entry;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$e$a;->c:Ljava/util/Iterator;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/common/collect/Range;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$e$a;->d:Lcom/google/common/collect/Cut;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->b()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$e$a;->e:Lcom/google/common/collect/TreeRangeSet$e;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/google/common/collect/TreeRangeSet$e;->d(Lcom/google/common/collect/TreeRangeSet$e;)Lcom/google/common/collect/Range;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method
