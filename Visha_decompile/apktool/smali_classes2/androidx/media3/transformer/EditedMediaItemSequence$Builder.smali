.class public final Landroidx/media3/transformer/EditedMediaItemSequence$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/EditedMediaItemSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private isLooping:Z

.field private final items:Lcom/google/common/collect/ImmutableList$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList$a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItem;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->items:Lcom/google/common/collect/ImmutableList$a;

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/transformer/EditedMediaItem;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$a;->k([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->items:Lcom/google/common/collect/ImmutableList$a;

    return-void
.end method

.method public static synthetic access$100(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;)Lcom/google/common/collect/ImmutableList$a;
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->items:Lcom/google/common/collect/ImmutableList$a;

    return-object p0
.end method

.method public static synthetic access$200(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->isLooping:Z

    return p0
.end method


# virtual methods
.method public addGap(J)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;
    .locals 4

    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->items:Lcom/google/common/collect/ImmutableList$a;

    new-instance v1, Landroidx/media3/transformer/EditedMediaItem$Builder;

    new-instance v2, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v2}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    const-string v3, "androidx-media3-GapMediaItem"

    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/transformer/EditedMediaItem$Builder;-><init>(Landroidx/media3/common/MediaItem;)V

    invoke-virtual {v1, p1, p2}, Landroidx/media3/transformer/EditedMediaItem$Builder;->setDurationUs(J)Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->build()Landroidx/media3/transformer/EditedMediaItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    return-object p0
.end method

.method public addItem(Landroidx/media3/transformer/EditedMediaItem;)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->items:Lcom/google/common/collect/ImmutableList$a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    return-object p0
.end method

.method public addItems(Ljava/util/List;)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItem;",
            ">;)",
            "Landroidx/media3/transformer/EditedMediaItemSequence$Builder;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->items:Lcom/google/common/collect/ImmutableList$a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    return-object p0
.end method

.method public varargs addItems([Landroidx/media3/transformer/EditedMediaItem;)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->items:Lcom/google/common/collect/ImmutableList$a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$a;->k([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    return-object p0
.end method

.method public build()Landroidx/media3/transformer/EditedMediaItemSequence;
    .locals 2

    new-instance v0, Landroidx/media3/transformer/EditedMediaItemSequence;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/transformer/EditedMediaItemSequence;-><init>(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;Landroidx/media3/transformer/EditedMediaItemSequence$1;)V

    return-object v0
.end method

.method public setIsLooping(Z)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->isLooping:Z

    return-object p0
.end method
