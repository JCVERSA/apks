.class public final Landroidx/media3/transformer/Composition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/Composition$Builder;,
        Landroidx/media3/transformer/Composition$HdrMode;
    }
.end annotation


# static fields
.field public static final HDR_MODE_EXPERIMENTAL_FORCE_INTERPRET_HDR_AS_SDR:I = 0x3

.field public static final HDR_MODE_KEEP_HDR:I = 0x0

.field public static final HDR_MODE_TONE_MAP_HDR_TO_SDR_USING_MEDIACODEC:I = 0x1

.field public static final HDR_MODE_TONE_MAP_HDR_TO_SDR_USING_OPEN_GL:I = 0x2


# instance fields
.field public final effects:Landroidx/media3/transformer/Effects;

.field public final forceAudioTrack:Z

.field public final hdrMode:I

.field public final retainHdrFromUltraHdrImage:Z

.field public final sequences:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/transformer/EditedMediaItemSequence;",
            ">;"
        }
    .end annotation
.end field

.field public final transmuxAudio:Z

.field public final transmuxVideo:Z

.field public final videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;


# direct methods
.method private constructor <init>(Ljava/util/List;Landroidx/media3/common/VideoCompositorSettings;Landroidx/media3/transformer/Effects;ZZZIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItemSequence;",
            ">;",
            "Landroidx/media3/common/VideoCompositorSettings;",
            "Landroidx/media3/transformer/Effects;",
            "ZZZIZ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    const-string v1, "Audio transmuxing and audio track forcing are not allowed together."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 4
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    .line 5
    iput-object p2, p0, Landroidx/media3/transformer/Composition;->videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;

    .line 6
    iput-object p3, p0, Landroidx/media3/transformer/Composition;->effects:Landroidx/media3/transformer/Effects;

    .line 7
    iput-boolean p5, p0, Landroidx/media3/transformer/Composition;->transmuxAudio:Z

    .line 8
    iput-boolean p6, p0, Landroidx/media3/transformer/Composition;->transmuxVideo:Z

    .line 9
    iput-boolean p4, p0, Landroidx/media3/transformer/Composition;->forceAudioTrack:Z

    .line 10
    iput p7, p0, Landroidx/media3/transformer/Composition;->hdrMode:I

    .line 11
    iput-boolean p8, p0, Landroidx/media3/transformer/Composition;->retainHdrFromUltraHdrImage:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroidx/media3/common/VideoCompositorSettings;Landroidx/media3/transformer/Effects;ZZZIZLandroidx/media3/transformer/Composition$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Landroidx/media3/transformer/Composition;-><init>(Ljava/util/List;Landroidx/media3/common/VideoCompositorSettings;Landroidx/media3/transformer/Effects;ZZZIZ)V

    return-void
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/transformer/Composition$Builder;
    .locals 2

    new-instance v0, Landroidx/media3/transformer/Composition$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/transformer/Composition$Builder;-><init>(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/Composition$1;)V

    return-object v0
.end method

.method public hasGaps()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-virtual {v2}, Landroidx/media3/transformer/EditedMediaItemSequence;->hasGaps()Z

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
