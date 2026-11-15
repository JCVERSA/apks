.class public Lcom/google/common/collect/MapMakerInternalMap$s;
.super Lcom/google/common/collect/MapMakerInternalMap$c;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMakerInternalMap$s$a;,
        Lcom/google/common/collect/MapMakerInternalMap$s$b;
    }
.end annotation


# instance fields
.field public volatile c:Lcom/google/common/collect/MapMakerInternalMap$u;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$c;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->unsetWeakValueReference()Lcom/google/common/collect/MapMakerInternalMap$u;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$s;->c:Lcom/google/common/collect/MapMakerInternalMap$u;

    return-void
.end method

.method public static synthetic d(Lcom/google/common/collect/MapMakerInternalMap$s;)Lcom/google/common/collect/MapMakerInternalMap$u;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$s;->c:Lcom/google/common/collect/MapMakerInternalMap$u;

    return-object p0
.end method

.method public static synthetic e(Lcom/google/common/collect/MapMakerInternalMap$s;Lcom/google/common/collect/MapMakerInternalMap$u;)Lcom/google/common/collect/MapMakerInternalMap$u;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$s;->c:Lcom/google/common/collect/MapMakerInternalMap$u;

    return-object p1
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/MapMakerInternalMap$u;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$s;->c:Lcom/google/common/collect/MapMakerInternalMap$u;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$s;->c:Lcom/google/common/collect/MapMakerInternalMap$u;

    invoke-interface {p0}, Lcom/google/common/collect/MapMakerInternalMap$u;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
