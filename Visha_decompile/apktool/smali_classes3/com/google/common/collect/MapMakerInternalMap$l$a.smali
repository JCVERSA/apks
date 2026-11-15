.class public final Lcom/google/common/collect/MapMakerInternalMap$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/MapMakerInternalMap$l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$l$a;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$l$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$l$a;->a:Lcom/google/common/collect/MapMakerInternalMap$l$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h()Lcom/google/common/collect/MapMakerInternalMap$l$a;
    .locals 1

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$l$a;->a:Lcom/google/common/collect/MapMakerInternalMap$l$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$l$a;->j(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$h;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$l;

    check-cast p3, Lcom/google/common/collect/MapMaker$Dummy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$l$a;->k(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Lcom/google/common/collect/MapMakerInternalMap$l;Lcom/google/common/collect/MapMaker$Dummy;)V

    return-void
.end method

.method public c()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 0

    sget-object p0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object p0
.end method

.method public bridge synthetic d(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$h;Lcom/google/common/collect/MapMakerInternalMap$h;)Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 0

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$l;

    check-cast p3, Lcom/google/common/collect/MapMakerInternalMap$l;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$l$a;->g(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Lcom/google/common/collect/MapMakerInternalMap$l;Lcom/google/common/collect/MapMakerInternalMap$l;)Lcom/google/common/collect/MapMakerInternalMap$l;

    move-result-object p0

    return-object p0
.end method

.method public e()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 0

    sget-object p0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object p0
.end method

.method public bridge synthetic f(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$h;)Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 0

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    check-cast p4, Lcom/google/common/collect/MapMakerInternalMap$l;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$l$a;->i(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$l;)Lcom/google/common/collect/MapMakerInternalMap$l;

    move-result-object p0

    return-object p0
.end method

.method public g(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Lcom/google/common/collect/MapMakerInternalMap$l;Lcom/google/common/collect/MapMakerInternalMap$l;)Lcom/google/common/collect/MapMakerInternalMap$l;
    .locals 1

    iget-object v0, p2, Lcom/google/common/collect/MapMakerInternalMap$b;->b:Ljava/lang/Object;

    iget p2, p2, Lcom/google/common/collect/MapMakerInternalMap$b;->c:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$l$a;->i(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$l;)Lcom/google/common/collect/MapMakerInternalMap$l;

    move-result-object p0

    return-object p0
.end method

.method public i(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$l;)Lcom/google/common/collect/MapMakerInternalMap$l;
    .locals 0

    if-nez p4, :cond_0

    new-instance p0, Lcom/google/common/collect/MapMakerInternalMap$l;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/google/common/collect/MapMakerInternalMap$l;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$a;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/common/collect/MapMakerInternalMap$l$b;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$l$b;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$l;)V

    :goto_0
    return-object p0
.end method

.method public j(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;
    .locals 0

    new-instance p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;I)V

    return-object p0
.end method

.method public k(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Lcom/google/common/collect/MapMakerInternalMap$l;Lcom/google/common/collect/MapMaker$Dummy;)V
    .locals 0

    return-void
.end method
