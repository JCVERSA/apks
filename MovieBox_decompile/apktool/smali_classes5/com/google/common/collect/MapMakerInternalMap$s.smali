.class Lcom/google/common/collect/MapMakerInternalMap$s;
.super Lcom/google/common/collect/MapMakerInternalMap$c;
.source "source.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMakerInternalMap$s$a;,
        Lcom/google/common/collect/MapMakerInternalMap$s$b;
    }
.end annotation


# instance fields
.field private volatile b:Lcom/google/common/collect/MapMakerInternalMap$u;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$c;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->unsetWeakValueReference()Lcom/google/common/collect/MapMakerInternalMap$u;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$s;->b:Lcom/google/common/collect/MapMakerInternalMap$u;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic c(Lcom/google/common/collect/MapMakerInternalMap$s;)Lcom/google/common/collect/MapMakerInternalMap$u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$s;->b:Lcom/google/common/collect/MapMakerInternalMap$u;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/google/common/collect/MapMakerInternalMap$s;Lcom/google/common/collect/MapMakerInternalMap$u;)Lcom/google/common/collect/MapMakerInternalMap$u;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$s;->b:Lcom/google/common/collect/MapMakerInternalMap$u;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/MapMakerInternalMap$u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$s;->b:Lcom/google/common/collect/MapMakerInternalMap$u;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$s;->b:Lcom/google/common/collect/MapMakerInternalMap$u;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$u;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
