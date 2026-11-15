.class public final Lcom/google/common/collect/MapMakerInternalMap$q$b;
.super Lcom/google/common/collect/MapMakerInternalMap$q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final c:Lcom/google/common/collect/MapMakerInternalMap$q;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$q;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/collect/MapMakerInternalMap$q;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$a;)V

    .line 3
    iput-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$q$b;->c:Lcom/google/common/collect/MapMakerInternalMap$q;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$q;Lcom/google/common/collect/MapMakerInternalMap$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$q$b;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$q;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$q$b;->e()Lcom/google/common/collect/MapMakerInternalMap$q;

    move-result-object p0

    return-object p0
.end method

.method public e()Lcom/google/common/collect/MapMakerInternalMap$q;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$q$b;->c:Lcom/google/common/collect/MapMakerInternalMap$q;

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lcom/google/common/collect/MapMakerInternalMap$q;->d()Lcom/google/common/collect/MapMaker$Dummy;

    move-result-object p0

    return-object p0
.end method
