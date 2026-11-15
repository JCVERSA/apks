.class public final Lcom/google/common/collect/MapMakerInternalMap$s$b;
.super Lcom/google/common/collect/MapMakerInternalMap$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final d:Lcom/google/common/collect/MapMakerInternalMap$s;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$s;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$s;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    iput-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$s$b;->d:Lcom/google/common/collect/MapMakerInternalMap$s;

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$s$b;->f()Lcom/google/common/collect/MapMakerInternalMap$s;

    move-result-object p0

    return-object p0
.end method

.method public f()Lcom/google/common/collect/MapMakerInternalMap$s;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$s$b;->d:Lcom/google/common/collect/MapMakerInternalMap$s;

    return-object p0
.end method
