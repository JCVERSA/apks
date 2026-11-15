.class final Landroidx/media3/transformer/CompositionPlayer$CompositionTrackSelector;
.super Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/CompositionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CompositionTrackSelector"
.end annotation


# static fields
.field private static final SILENCE_AUDIO_TRACK_GROUP_ID:Ljava/lang/String; = "1:"


# instance fields
.field private final disableVideoPlayback:Z

.field private final sequenceIndex:I

.field final synthetic this$0:Landroidx/media3/transformer/CompositionPlayer;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/CompositionPlayer;Landroid/content/Context;IZ)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$CompositionTrackSelector;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    iput p3, p0, Landroidx/media3/transformer/CompositionPlayer$CompositionTrackSelector;->sequenceIndex:I

    iput-boolean p4, p0, Landroidx/media3/transformer/CompositionPlayer$CompositionTrackSelector;->disableVideoPlayback:Z

    return-void
.end method


# virtual methods
.method public selectAudioTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_1
    if-eq v1, v4, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v2

    iget v5, v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-le v5, v3, :cond_8

    move v5, v0

    move v7, v5

    move v6, v4

    :goto_3
    iget v8, v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v5, v8, :cond_6

    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v8

    iget-object v8, v8, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    const-string v9, "1:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v6, v5

    goto :goto_6

    :cond_3
    move v8, v0

    :goto_4
    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v9

    iget v9, v9, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v8, v9, :cond_5

    aget-object v9, p2, v1

    aget-object v9, v9, v5

    aget v9, v9, v8

    invoke-static {v9}, Landroidx/media3/exoplayer/RendererCapabilities;->getFormatSupport(I)I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    move v9, v3

    goto :goto_5

    :cond_4
    move v9, v0

    :goto_5
    or-int/2addr v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    if-eq v6, v4, :cond_7

    move v4, v3

    goto :goto_7

    :cond_7
    move v4, v0

    :goto_7
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    if-eqz v7, :cond_8

    iget v2, v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    sub-int/2addr v2, v3

    aget-object v1, p2, v1

    aget-object v1, v1, v2

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v2

    aput v2, v1, v0

    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectAudioTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public selectImageTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectImageTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;

    move-result-object p1

    iget-boolean p2, p0, Landroidx/media3/transformer/CompositionPlayer$CompositionTrackSelector;->disableVideoPlayback:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object p2, p0, Landroidx/media3/transformer/CompositionPlayer$CompositionTrackSelector;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    if-eqz p1, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    iget p0, p0, Landroidx/media3/transformer/CompositionPlayer$CompositionTrackSelector;->sequenceIndex:I

    invoke-static {p2, p3, p0}, Landroidx/media3/transformer/CompositionPlayer;->access$1700(Landroidx/media3/transformer/CompositionPlayer;ZI)V

    return-object p1
.end method

.method public selectVideoTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectVideoTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-boolean p2, p0, Landroidx/media3/transformer/CompositionPlayer$CompositionTrackSelector;->disableVideoPlayback:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object p2, p0, Landroidx/media3/transformer/CompositionPlayer$CompositionTrackSelector;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    if-eqz p1, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    iget p0, p0, Landroidx/media3/transformer/CompositionPlayer$CompositionTrackSelector;->sequenceIndex:I

    invoke-static {p2, p3, p0}, Landroidx/media3/transformer/CompositionPlayer;->access$1700(Landroidx/media3/transformer/CompositionPlayer;ZI)V

    return-object p1
.end method
