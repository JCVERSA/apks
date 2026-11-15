.class public final Lcom/google/common/collect/MapMakerInternalMap$l$b;
.super Lcom/google/common/collect/MapMakerInternalMap$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final d:Lcom/google/common/collect/MapMakerInternalMap$l;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$l;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$l;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$a;)V

    iput-object p3, p0, Lcom/google/common/collect/MapMakerInternalMap$l$b;->d:Lcom/google/common/collect/MapMakerInternalMap$l;

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$l$b;->e()Lcom/google/common/collect/MapMakerInternalMap$l;

    move-result-object p0

    return-object p0
.end method

.method public e()Lcom/google/common/collect/MapMakerInternalMap$l;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$l$b;->d:Lcom/google/common/collect/MapMakerInternalMap$l;

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lcom/google/common/collect/MapMakerInternalMap$l;->d()Lcom/google/common/collect/MapMaker$Dummy;

    move-result-object p0

    return-object p0
.end method
