.class Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;
.super Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableAsList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->createAsList()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableAsList<",
        "Ljava/util/Map$Entry<",
        "TV;TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->this$2:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    invoke-direct {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method public delegateCollection()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableCollection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableCollection<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->this$2:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->get(I)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public get(I)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->this$2:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->this$1:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse;

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;

    invoke-static {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->access$400(Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;)[Ljava/util/Map$Entry;

    move-result-object p0

    aget-object p0, p0, p1

    .line 3
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
