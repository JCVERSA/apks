.class final Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$7;
.super Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/bumptech/glide/repackaged/com/google/common/base/Predicate;)Lcom/bumptech/glide/repackaged/com/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$predicate:Lcom/bumptech/glide/repackaged/com/google/common/base/Predicate;

.field final synthetic val$unfiltered:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/bumptech/glide/repackaged/com/google/common/base/Predicate;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$7;->val$unfiltered:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$7;->val$predicate:Lcom/bumptech/glide/repackaged/com/google/common/base/Predicate;

    invoke-direct {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$7;->val$unfiltered:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$7;->val$unfiltered:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators$7;->val$predicate:Lcom/bumptech/glide/repackaged/com/google/common/base/Predicate;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/repackaged/com/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
