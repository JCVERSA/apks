.class Lcom/google/common/collect/MapMakerInternalMap$n;
.super Lcom/google/common/collect/MapMakerInternalMap$b;
.source "source.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMakerInternalMap$n$a;,
        Lcom/google/common/collect/MapMakerInternalMap$n$b;
    }
.end annotation


# instance fields
.field private volatile c:Lcom/google/common/collect/MapMakerInternalMap$u;


# direct methods
.method private constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$b;-><init>(Ljava/lang/Object;I)V

    .line 3
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->unsetWeakValueReference()Lcom/google/common/collect/MapMakerInternalMap$u;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$n;->c:Lcom/google/common/collect/MapMakerInternalMap$u;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$n;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic c(Lcom/google/common/collect/MapMakerInternalMap$n;)Lcom/google/common/collect/MapMakerInternalMap$u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$n;->c:Lcom/google/common/collect/MapMakerInternalMap$u;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/google/common/collect/MapMakerInternalMap$n;Lcom/google/common/collect/MapMakerInternalMap$u;)Lcom/google/common/collect/MapMakerInternalMap$u;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$n;->c:Lcom/google/common/collect/MapMakerInternalMap$u;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/MapMakerInternalMap$u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$n;->c:Lcom/google/common/collect/MapMakerInternalMap$u;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$n;->c:Lcom/google/common/collect/MapMakerInternalMap$u;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$u;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
