.class public Lcom/google/common/collect/MapMakerInternalMap$n;
.super Lcom/google/common/collect/MapMakerInternalMap$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMakerInternalMap$n$a;,
        Lcom/google/common/collect/MapMakerInternalMap$n$b;
    }
.end annotation


# instance fields
.field public volatile d:Lcom/google/common/collect/MapMakerInternalMap$u;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$b;-><init>(Ljava/lang/Object;I)V

    .line 3
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->unsetWeakValueReference()Lcom/google/common/collect/MapMakerInternalMap$u;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$n;->d:Lcom/google/common/collect/MapMakerInternalMap$u;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$n;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic d(Lcom/google/common/collect/MapMakerInternalMap$n;)Lcom/google/common/collect/MapMakerInternalMap$u;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$n;->d:Lcom/google/common/collect/MapMakerInternalMap$u;

    return-object p0
.end method

.method public static synthetic e(Lcom/google/common/collect/MapMakerInternalMap$n;Lcom/google/common/collect/MapMakerInternalMap$u;)Lcom/google/common/collect/MapMakerInternalMap$u;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$n;->d:Lcom/google/common/collect/MapMakerInternalMap$u;

    return-object p1
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/MapMakerInternalMap$u;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$n;->d:Lcom/google/common/collect/MapMakerInternalMap$u;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$n;->d:Lcom/google/common/collect/MapMakerInternalMap$u;

    invoke-interface {p0}, Lcom/google/common/collect/MapMakerInternalMap$u;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
