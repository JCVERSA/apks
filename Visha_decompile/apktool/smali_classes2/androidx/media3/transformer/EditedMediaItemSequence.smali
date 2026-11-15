.class public final Landroidx/media3/transformer/EditedMediaItemSequence;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/EditedMediaItemSequence$Builder;
    }
.end annotation


# instance fields
.field public final editedMediaItems:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/transformer/EditedMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public final isLooping:Z


# direct methods
.method public varargs constructor <init>(Landroidx/media3/transformer/EditedMediaItem;[Landroidx/media3/transformer/EditedMediaItem;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/media3/transformer/EditedMediaItem;

    invoke-direct {v0, v1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;-><init>([Landroidx/media3/transformer/EditedMediaItem;)V

    invoke-virtual {v0, p1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->addItem(Landroidx/media3/transformer/EditedMediaItem;)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->addItems([Landroidx/media3/transformer/EditedMediaItem;)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/transformer/EditedMediaItemSequence;-><init>(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->access$100(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    .line 7
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The sequence must contain at least one EditedMediaItem."

    .line 8
    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 9
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->access$200(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->isLooping:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;Landroidx/media3/transformer/EditedMediaItemSequence$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/transformer/EditedMediaItemSequence;-><init>(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItem;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance v0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/media3/transformer/EditedMediaItem;

    invoke-direct {v0, v1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;-><init>([Landroidx/media3/transformer/EditedMediaItem;)V

    invoke-virtual {v0, p1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->addItems(Ljava/util/List;)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/transformer/EditedMediaItemSequence;-><init>(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItem;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    new-instance v0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/media3/transformer/EditedMediaItem;

    invoke-direct {v0, v1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;-><init>([Landroidx/media3/transformer/EditedMediaItem;)V

    invoke-virtual {v0, p1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->addItems(Ljava/util/List;)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->setIsLooping(Z)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/transformer/EditedMediaItemSequence;-><init>(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;)V

    return-void
.end method


# virtual methods
.method public hasGaps()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/EditedMediaItem;

    invoke-virtual {v2}, Landroidx/media3/transformer/EditedMediaItem;->isGap()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
