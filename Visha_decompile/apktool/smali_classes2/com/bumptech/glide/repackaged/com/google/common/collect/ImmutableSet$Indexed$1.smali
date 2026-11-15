.class Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet$Indexed$1;
.super Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableAsList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet$Indexed;->createAsList()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableAsList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet$Indexed;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet$Indexed;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet$Indexed$1;->this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet$Indexed;

    invoke-direct {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic delegateCollection()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableCollection;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet$Indexed$1;->delegateCollection()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet$Indexed;

    move-result-object p0

    return-object p0
.end method

.method public delegateCollection()Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet$Indexed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet$Indexed<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet$Indexed$1;->this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet$Indexed;

    return-object p0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet$Indexed$1;->this$0:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet$Indexed;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableSet$Indexed;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
