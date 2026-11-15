.class public final Landroidx/media3/transformer/Composition$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/Composition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private effects:Landroidx/media3/transformer/Effects;

.field private forceAudioTrack:Z

.field private hdrMode:I

.field private retainHdrFromUltraHdrImage:Z

.field private sequences:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/transformer/EditedMediaItemSequence;",
            ">;"
        }
    .end annotation
.end field

.field private transmuxAudio:Z

.field private transmuxVideo:Z

.field private videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;


# direct methods
.method private constructor <init>(Landroidx/media3/transformer/Composition;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iget-object v0, p1, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/transformer/Composition$Builder;->sequences:Lcom/google/common/collect/ImmutableList;

    .line 15
    iget-object v0, p1, Landroidx/media3/transformer/Composition;->videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;

    iput-object v0, p0, Landroidx/media3/transformer/Composition$Builder;->videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;

    .line 16
    iget-object v0, p1, Landroidx/media3/transformer/Composition;->effects:Landroidx/media3/transformer/Effects;

    iput-object v0, p0, Landroidx/media3/transformer/Composition$Builder;->effects:Landroidx/media3/transformer/Effects;

    .line 17
    iget-boolean v0, p1, Landroidx/media3/transformer/Composition;->forceAudioTrack:Z

    iput-boolean v0, p0, Landroidx/media3/transformer/Composition$Builder;->forceAudioTrack:Z

    .line 18
    iget-boolean v0, p1, Landroidx/media3/transformer/Composition;->transmuxAudio:Z

    iput-boolean v0, p0, Landroidx/media3/transformer/Composition$Builder;->transmuxAudio:Z

    .line 19
    iget-boolean v0, p1, Landroidx/media3/transformer/Composition;->transmuxVideo:Z

    iput-boolean v0, p0, Landroidx/media3/transformer/Composition$Builder;->transmuxVideo:Z

    .line 20
    iget v0, p1, Landroidx/media3/transformer/Composition;->hdrMode:I

    iput v0, p0, Landroidx/media3/transformer/Composition$Builder;->hdrMode:I

    .line 21
    iget-boolean p1, p1, Landroidx/media3/transformer/Composition;->retainHdrFromUltraHdrImage:Z

    iput-boolean p1, p0, Landroidx/media3/transformer/Composition$Builder;->retainHdrFromUltraHdrImage:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/Composition$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/transformer/Composition$Builder;-><init>(Landroidx/media3/transformer/Composition;)V

    return-void
.end method

.method public varargs constructor <init>(Landroidx/media3/transformer/EditedMediaItemSequence;[Landroidx/media3/transformer/EditedMediaItemSequence;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableList$a;->k([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Landroidx/media3/transformer/Composition$Builder;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItemSequence;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The composition must contain at least one EditedMediaItemSequence."

    .line 9
    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 10
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/Composition$Builder;->sequences:Lcom/google/common/collect/ImmutableList;

    .line 11
    sget-object p1, Landroidx/media3/common/VideoCompositorSettings;->DEFAULT:Landroidx/media3/common/VideoCompositorSettings;

    iput-object p1, p0, Landroidx/media3/transformer/Composition$Builder;->videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;

    .line 12
    sget-object p1, Landroidx/media3/transformer/Effects;->EMPTY:Landroidx/media3/transformer/Effects;

    iput-object p1, p0, Landroidx/media3/transformer/Composition$Builder;->effects:Landroidx/media3/transformer/Effects;

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/transformer/Composition;
    .locals 11

    new-instance v10, Landroidx/media3/transformer/Composition;

    iget-object v1, p0, Landroidx/media3/transformer/Composition$Builder;->sequences:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Landroidx/media3/transformer/Composition$Builder;->videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;

    iget-object v3, p0, Landroidx/media3/transformer/Composition$Builder;->effects:Landroidx/media3/transformer/Effects;

    iget-boolean v4, p0, Landroidx/media3/transformer/Composition$Builder;->forceAudioTrack:Z

    iget-boolean v5, p0, Landroidx/media3/transformer/Composition$Builder;->transmuxAudio:Z

    iget-boolean v6, p0, Landroidx/media3/transformer/Composition$Builder;->transmuxVideo:Z

    iget v7, p0, Landroidx/media3/transformer/Composition$Builder;->hdrMode:I

    iget-boolean p0, p0, Landroidx/media3/transformer/Composition$Builder;->retainHdrFromUltraHdrImage:Z

    if-eqz p0, :cond_0

    if-nez v7, :cond_0

    const/4 p0, 0x1

    :goto_0
    move v8, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroidx/media3/transformer/Composition;-><init>(Ljava/util/List;Landroidx/media3/common/VideoCompositorSettings;Landroidx/media3/transformer/Effects;ZZZIZLandroidx/media3/transformer/Composition$1;)V

    return-object v10
.end method

.method public experimentalSetForceAudioTrack(Z)Landroidx/media3/transformer/Composition$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/transformer/Composition$Builder;->forceAudioTrack:Z

    return-object p0
.end method

.method public experimentalSetRetainHdrFromUltraHdrImage(Z)Landroidx/media3/transformer/Composition$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/transformer/Composition$Builder;->retainHdrFromUltraHdrImage:Z

    return-object p0
.end method

.method public setEffects(Landroidx/media3/transformer/Effects;)Landroidx/media3/transformer/Composition$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/Composition$Builder;->effects:Landroidx/media3/transformer/Effects;

    return-object p0
.end method

.method public setHdrMode(I)Landroidx/media3/transformer/Composition$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/transformer/Composition$Builder;->hdrMode:I

    return-object p0
.end method

.method public setSequences(Ljava/util/List;)Landroidx/media3/transformer/Composition$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItemSequence;",
            ">;)",
            "Landroidx/media3/transformer/Composition$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The composition must contain at least one EditedMediaItemSequence."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/Composition$Builder;->sequences:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setTransmuxAudio(Z)Landroidx/media3/transformer/Composition$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/transformer/Composition$Builder;->transmuxAudio:Z

    return-object p0
.end method

.method public setTransmuxVideo(Z)Landroidx/media3/transformer/Composition$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/transformer/Composition$Builder;->transmuxVideo:Z

    return-object p0
.end method

.method public setVideoCompositorSettings(Landroidx/media3/common/VideoCompositorSettings;)Landroidx/media3/transformer/Composition$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/Composition$Builder;->videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;

    return-object p0
.end method
