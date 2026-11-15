.class final Lcom/google/common/collect/MapMakerInternalMap$v;
.super Ljava/lang/ref/WeakReference;
.source "source.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "v"
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/MapMakerInternalMap$h;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/common/collect/MapMakerInternalMap$v;->a:Lcom/google/common/collect/MapMakerInternalMap$h;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$v;->a:Lcom/google/common/collect/MapMakerInternalMap$h;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$h;)Lcom/google/common/collect/MapMakerInternalMap$u;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$v;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p1, v1, p2}, Lcom/google/common/collect/MapMakerInternalMap$v;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$h;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
