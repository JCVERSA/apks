.class final Lcom/google/common/collect/MapMakerInternalMap$r$b;
.super Lcom/google/common/collect/MapMakerInternalMap$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final c:Lcom/google/common/collect/MapMakerInternalMap$r;


# direct methods
.method private constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$r;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/collect/MapMakerInternalMap$r;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$a;)V

    .line 3
    iput-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$r$b;->c:Lcom/google/common/collect/MapMakerInternalMap$r;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$r;Lcom/google/common/collect/MapMakerInternalMap$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$r$b;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$r;)V

    return-void
.end method


# virtual methods
.method public e()Lcom/google/common/collect/MapMakerInternalMap$r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$r$b;->c:Lcom/google/common/collect/MapMakerInternalMap$r;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic k()Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$r$b;->e()Lcom/google/common/collect/MapMakerInternalMap$r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
