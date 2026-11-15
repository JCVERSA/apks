.class final Lcom/google/common/collect/MapMakerInternalMap$l$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/MapMakerInternalMap$l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$l$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$l$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$l$a;->a:Lcom/google/common/collect/MapMakerInternalMap$l$a;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static h()Lcom/google/common/collect/MapMakerInternalMap$l$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$l$a;->a:Lcom/google/common/collect/MapMakerInternalMap$l$a;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$l$a;->j(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$h;Lcom/google/common/collect/MapMakerInternalMap$h;)Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    .line 2
    .line 3
    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$l;

    .line 4
    .line 5
    check-cast p3, Lcom/google/common/collect/MapMakerInternalMap$l;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$l$a;->g(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Lcom/google/common/collect/MapMakerInternalMap$l;Lcom/google/common/collect/MapMakerInternalMap$l;)Lcom/google/common/collect/MapMakerInternalMap$l;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public c()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic d(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$h;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    .line 2
    .line 3
    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$l;

    .line 4
    .line 5
    check-cast p3, Lcom/google/common/collect/MapMaker$Dummy;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$l$a;->k(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Lcom/google/common/collect/MapMakerInternalMap$l;Lcom/google/common/collect/MapMaker$Dummy;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public bridge synthetic e(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$h;)Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    .line 2
    .line 3
    check-cast p4, Lcom/google/common/collect/MapMakerInternalMap$l;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$l$a;->i(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$l;)Lcom/google/common/collect/MapMakerInternalMap$l;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public f()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 2
    .line 3
    return-object v0
.end method

.method public g(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Lcom/google/common/collect/MapMakerInternalMap$l;Lcom/google/common/collect/MapMakerInternalMap$l;)Lcom/google/common/collect/MapMakerInternalMap$l;
    .locals 1

    .line 1
    iget-object v0, p2, Lcom/google/common/collect/MapMakerInternalMap$b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget p2, p2, Lcom/google/common/collect/MapMakerInternalMap$b;->b:I

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$l$a;->i(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$l;)Lcom/google/common/collect/MapMakerInternalMap$l;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public i(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$l;)Lcom/google/common/collect/MapMakerInternalMap$l;
    .locals 0

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/google/common/collect/MapMakerInternalMap$l;

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$l;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$a;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lcom/google/common/collect/MapMakerInternalMap$l$b;

    .line 11
    .line 12
    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$l$b;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$l;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-object p1
.end method

.method public j(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public k(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Lcom/google/common/collect/MapMakerInternalMap$l;Lcom/google/common/collect/MapMaker$Dummy;)V
    .locals 0

    .line 1
    return-void
.end method
