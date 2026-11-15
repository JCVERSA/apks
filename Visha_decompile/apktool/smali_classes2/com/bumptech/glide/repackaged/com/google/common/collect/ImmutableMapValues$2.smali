.class Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapValues$2;
.super Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableAsList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapValues;->createAsList()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableAsList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapValues;

.field final synthetic val$entryList:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapValues;Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapValues$2;->this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapValues;

    iput-object p2, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapValues$2;->val$entryList:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;

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
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapValues$2;->this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapValues;

    return-object p0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableMapValues$2;->val$entryList:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
