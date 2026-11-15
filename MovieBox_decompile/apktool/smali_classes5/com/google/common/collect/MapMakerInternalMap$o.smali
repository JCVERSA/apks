.class final Lcom/google/common/collect/MapMakerInternalMap$o;
.super Lcom/google/common/collect/MapMakerInternalMap$g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "o"
.end annotation


# instance fields
.field final synthetic i:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$o;->i:Lcom/google/common/collect/MapMakerInternalMap;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$g;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$g;->c()Lcom/google/common/collect/MapMakerInternalMap$w;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$w;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
