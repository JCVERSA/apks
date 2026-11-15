.class Lcom/google/common/collect/RegularContiguousSet$b;
.super Lcom/google/common/collect/g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularContiguousSet;->descendingIterator()Lcom/google/common/collect/r4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final b:Ljava/lang/Comparable;

.field final synthetic c:Lcom/google/common/collect/RegularContiguousSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularContiguousSet;Ljava/lang/Comparable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/RegularContiguousSet$b;->c:Lcom/google/common/collect/RegularContiguousSet;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/common/collect/g;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/common/collect/RegularContiguousSet;->first()Ljava/lang/Comparable;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/google/common/collect/RegularContiguousSet$b;->b:Ljava/lang/Comparable;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularContiguousSet$b;->b(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected b(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet$b;->b:Ljava/lang/Comparable;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/common/collect/RegularContiguousSet;->access$000(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet$b;->c:Lcom/google/common/collect/RegularContiguousSet;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/common/collect/DiscreteDomain;->previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    return-object p1
.end method
