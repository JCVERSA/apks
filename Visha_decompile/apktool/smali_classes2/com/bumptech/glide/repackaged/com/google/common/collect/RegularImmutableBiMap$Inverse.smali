.class final Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse;
.super Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableBiMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Inverse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableBiMap;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;

    invoke-direct {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableBiMap;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;)V

    return-void
.end method


# virtual methods
.method public createEntrySet()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;-><init>(Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;

    invoke-static {v1}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->access$100(Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;)[Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/bumptech/glide/repackaged/com/google/common/collect/Hashing;->smear(I)I

    move-result v1

    iget-object v2, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;

    invoke-static {v2}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->access$200(Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;)I

    move-result v2

    and-int/2addr v1, v2

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;

    invoke-static {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;->access$100(Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;)[Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;

    move-result-object p0

    aget-object p0, p0, v1

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableEntry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapEntry;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public inverse()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableBiMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableBiMap;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap;

    return-object p0
.end method

.method public isPartialView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableBiMap$Inverse;->inverse()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableBiMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method
