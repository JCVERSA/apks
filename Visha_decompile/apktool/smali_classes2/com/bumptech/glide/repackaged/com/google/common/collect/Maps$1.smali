.class final Lcom/bumptech/glide/repackaged/com/google/common/collect/Maps$1;
.super Lcom/bumptech/glide/repackaged/com/google/common/collect/TransformedIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/repackaged/com/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$function:Lcom/bumptech/glide/repackaged/com/google/common/base/Function;


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/repackaged/com/google/common/collect/Maps$1;->transform(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public transform(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/Maps$1;->val$function:Lcom/bumptech/glide/repackaged/com/google/common/base/Function;

    invoke-interface {p0, p1}, Lcom/bumptech/glide/repackaged/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
