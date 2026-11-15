.class final Lcom/google/common/collect/MapMakerInternalMap$p;
.super Ljava/util/AbstractCollection;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "p"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$p;->a:Lcom/google/common/collect/MapMakerInternalMap;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$p;->a:Lcom/google/common/collect/MapMakerInternalMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$p;->a:Lcom/google/common/collect/MapMakerInternalMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->containsValue(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$p;->a:Lcom/google/common/collect/MapMakerInternalMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$o;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$p;->a:Lcom/google/common/collect/MapMakerInternalMap;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$o;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$p;->a:Lcom/google/common/collect/MapMakerInternalMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
