.class final Lcom/google/common/collect/MapMakerInternalMap$s$b;
.super Lcom/google/common/collect/MapMakerInternalMap$s;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final c:Lcom/google/common/collect/MapMakerInternalMap$s;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$s;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$s$b;->c:Lcom/google/common/collect/MapMakerInternalMap$s;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public e()Lcom/google/common/collect/MapMakerInternalMap$s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$s$b;->c:Lcom/google/common/collect/MapMakerInternalMap$s;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic k()Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$s$b;->e()Lcom/google/common/collect/MapMakerInternalMap$s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
