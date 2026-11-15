.class abstract Lcom/google/common/collect/HashBiMap$g;
.super Ljava/util/AbstractSet;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "g"
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$g;->a:Lcom/google/common/collect/HashBiMap;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method abstract a(I)Ljava/lang/Object;
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$g;->a:Lcom/google/common/collect/HashBiMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/HashBiMap;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/HashBiMap$g$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$g$a;-><init>(Lcom/google/common/collect/HashBiMap$g;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$g;->a:Lcom/google/common/collect/HashBiMap;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 4
    .line 5
    return v0
.end method
