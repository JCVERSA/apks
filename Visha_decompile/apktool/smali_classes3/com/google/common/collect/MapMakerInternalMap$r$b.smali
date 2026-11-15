.class public final Lcom/google/common/collect/MapMakerInternalMap$r$b;
.super Lcom/google/common/collect/MapMakerInternalMap$r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final d:Lcom/google/common/collect/MapMakerInternalMap$r;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$r;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/collect/MapMakerInternalMap$r;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$a;)V

    .line 3
    iput-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$r$b;->d:Lcom/google/common/collect/MapMakerInternalMap$r;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$r;Lcom/google/common/collect/MapMakerInternalMap$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$r$b;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$r;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$r$b;->f()Lcom/google/common/collect/MapMakerInternalMap$r;

    move-result-object p0

    return-object p0
.end method

.method public f()Lcom/google/common/collect/MapMakerInternalMap$r;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$r$b;->d:Lcom/google/common/collect/MapMakerInternalMap$r;

    return-object p0
.end method
