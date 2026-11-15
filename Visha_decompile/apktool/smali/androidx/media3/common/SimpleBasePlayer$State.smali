.class public final Landroidx/media3/common/SimpleBasePlayer$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/SimpleBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    }
.end annotation


# instance fields
.field public final adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field public final adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field public final audioAttributes:Landroidx/media3/common/AudioAttributes;

.field public final availableCommands:Landroidx/media3/common/Player$Commands;

.field public final contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field public final contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field public final currentAdGroupIndex:I

.field public final currentAdIndexInAdGroup:I

.field public final currentCues:Landroidx/media3/common/text/CueGroup;

.field public final currentMediaItemIndex:I

.field public final currentMetadata:Landroidx/media3/common/MediaMetadata;

.field public final currentTracks:Landroidx/media3/common/Tracks;

.field public final deviceInfo:Landroidx/media3/common/DeviceInfo;

.field public final deviceVolume:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field

.field public final discontinuityPositionMs:J

.field public final hasPositionDiscontinuity:Z

.field public final isDeviceMuted:Z

.field public final isLoading:Z

.field public final maxSeekToPreviousPositionMs:J

.field public final newlyRenderedFirstFrame:Z

.field public final playWhenReady:Z

.field public final playWhenReadyChangeReason:I

.field public final playbackParameters:Landroidx/media3/common/PlaybackParameters;

.field public final playbackState:I

.field public final playbackSuppressionReason:I

.field public final playerError:Landroidx/media3/common/PlaybackException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final playlistMetadata:Landroidx/media3/common/MediaMetadata;

.field public final positionDiscontinuityReason:I

.field public final repeatMode:I

.field public final seekBackIncrementMs:J

.field public final seekForwardIncrementMs:J

.field public final shuffleModeEnabled:Z

.field public final surfaceSize:Landroidx/media3/common/util/Size;

.field public final timedMetadata:Landroidx/media3/common/Metadata;

.field public final timeline:Landroidx/media3/common/Timeline;

.field public final totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field public final trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

.field private final usesDerivedMediaMetadata:Z

.field public final videoSize:Landroidx/media3/common/VideoSize;

.field public final volume:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Tracks;

    move-result-object v1

    .line 4
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    .line 5
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Timeline;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_5

    .line 6
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 7
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v3

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v6

    :goto_1
    const-string v8, "Empty playlist only allowed in STATE_IDLE or STATE_ENDED"

    .line 8
    invoke-static {v3, v8}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 9
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 10
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v3

    if-ne v3, v5, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    move v3, v7

    :goto_2
    const-string v8, "Ads not allowed if playlist is empty"

    .line 11
    invoke-static {v3, v8}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-nez v1, :cond_3

    .line 12
    sget-object v1, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    :cond_3
    if-nez v2, :cond_4

    .line 13
    sget-object v2, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    :cond_4
    move v3, v7

    goto/16 :goto_9

    .line 14
    :cond_5
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v3

    if-ne v3, v5, :cond_6

    move v3, v7

    goto :goto_4

    .line 15
    :cond_6
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v8

    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Timeline;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v9

    if-ge v8, v9, :cond_7

    move v8, v6

    goto :goto_3

    :cond_7
    move v8, v7

    :goto_3
    const-string v9, "currentMediaItemIndex must be less than playlist.size()"

    .line 16
    invoke-static {v8, v9}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 17
    :goto_4
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v8

    if-eq v8, v5, :cond_b

    .line 18
    new-instance v8, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v8}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 19
    new-instance v14, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v14}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 20
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 21
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :goto_5
    move-wide v12, v9

    goto :goto_6

    .line 22
    :cond_8
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v9

    invoke-interface {v9}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v9

    goto :goto_5

    .line 23
    :goto_6
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Timeline;

    move-result-object v10

    move v11, v3

    move-object v15, v8

    .line 24
    invoke-static/range {v10 .. v15}, Landroidx/media3/common/SimpleBasePlayer;->access$1200(Landroidx/media3/common/Timeline;IJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result v9

    .line 25
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Timeline;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 26
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v9

    invoke-virtual {v8}, Landroidx/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v10

    if-ge v9, v10, :cond_9

    move v9, v6

    goto :goto_7

    :cond_9
    move v9, v7

    :goto_7
    const-string v10, "PeriodData has less ad groups than adGroupIndex"

    .line 27
    invoke-static {v9, v10}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 28
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/media3/common/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v8

    if-eq v8, v5, :cond_b

    .line 29
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v9

    if-ge v9, v8, :cond_a

    move v8, v6

    goto :goto_8

    :cond_a
    move v8, v7

    :goto_8
    const-string v9, "Ad group has less ads than adIndexInGroupIndex"

    .line 30
    invoke-static {v8, v9}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 31
    :cond_b
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 32
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    .line 33
    iget-object v2, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->tracks:Landroidx/media3/common/Tracks;

    .line 34
    iget-object v1, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :cond_c
    if-nez v2, :cond_4

    .line 35
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Timeline;

    move-result-object v2

    new-instance v8, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v8}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v2, v3, v8}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 36
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Tracks;

    .line 37
    invoke-static {v2, v3}, Landroidx/media3/common/SimpleBasePlayer;->access$1400(Landroidx/media3/common/MediaItem;Landroidx/media3/common/Tracks;)Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    move v3, v6

    .line 38
    :goto_9
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/PlaybackException;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 39
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v8

    if-ne v8, v6, :cond_d

    move v7, v6

    :cond_d
    const-string v8, "Player error only allowed in STATE_IDLE"

    .line 40
    invoke-static {v7, v8}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 41
    :cond_e
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v7

    if-eq v7, v6, :cond_f

    .line 42
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v7

    if-ne v7, v4, :cond_10

    .line 43
    :cond_f
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v4

    xor-int/2addr v4, v6

    const-string v6, "isLoading only allowed when not in STATE_IDLE or STATE_ENDED"

    .line 44
    invoke-static {v4, v6}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 45
    :cond_10
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v4

    .line 46
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    if-eqz v6, :cond_12

    .line 47
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v4

    if-ne v4, v5, :cond_11

    .line 48
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 49
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v4

    if-ne v4, v7, :cond_11

    .line 50
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v4

    if-nez v4, :cond_11

    .line 51
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v8, v10

    if-eqz v4, :cond_11

    .line 52
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/PlaybackParameters;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 53
    invoke-static {v8, v9, v4}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getExtrapolating(JF)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v4

    goto :goto_a

    .line 54
    :cond_11
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v4

    .line 55
    :cond_12
    :goto_a
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v6

    .line 56
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 57
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v6

    if-eq v6, v5, :cond_13

    .line 58
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 59
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v5

    if-ne v5, v7, :cond_13

    .line 60
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v5

    if-nez v5, :cond_13

    .line 61
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v7}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getExtrapolating(JF)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v6

    goto :goto_b

    .line 62
    :cond_13
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v6

    .line 63
    :cond_14
    :goto_b
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Player$Commands;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 64
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v5

    iput-boolean v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    .line 65
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v5

    iput v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    .line 66
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v5

    iput v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    .line 67
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v5

    iput v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    .line 68
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/PlaybackException;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    .line 69
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v5

    iput v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    .line 70
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v5

    iput-boolean v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    .line 71
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v5

    iput-boolean v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    .line 72
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J

    move-result-wide v7

    iput-wide v7, v0, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    .line 73
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J

    move-result-wide v7

    iput-wide v7, v0, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    .line 74
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J

    move-result-wide v7

    iput-wide v7, v0, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    .line 75
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/PlaybackParameters;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 76
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 77
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/AudioAttributes;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 78
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)F

    move-result v5

    iput v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    .line 79
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/VideoSize;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    .line 80
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/text/CueGroup;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    .line 81
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/DeviceInfo;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    .line 82
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v5

    iput v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    .line 83
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v5

    iput-boolean v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    .line 84
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/util/Size;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 85
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v5

    iput-boolean v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    .line 86
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Metadata;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    .line 87
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Timeline;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 88
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Tracks;

    iput-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentTracks:Landroidx/media3/common/Tracks;

    .line 89
    iput-object v2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    .line 90
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$4000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    .line 91
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v1

    iput v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    .line 92
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v1

    iput v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    .line 93
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v1

    iput v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    .line 94
    iput-object v4, v0, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 95
    iput-object v6, v0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 96
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$4100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 97
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$4200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 98
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$4300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 99
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$4400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    .line 100
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$4500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v1

    iput v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    .line 101
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$4600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->discontinuityPositionMs:J

    .line 102
    iput-boolean v3, v0, Landroidx/media3/common/SimpleBasePlayer$State;->usesDerivedMediaMetadata:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer$State$Builder;Landroidx/media3/common/SimpleBasePlayer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State;-><init>(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)V

    return-void
.end method

.method public static synthetic access$100(Landroidx/media3/common/SimpleBasePlayer$State;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->usesDerivedMediaMetadata:Z

    return p0
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 2

    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/common/SimpleBasePlayer$State;

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    iget-boolean v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v1, v3}, Landroidx/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    iget-boolean v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    iget-boolean v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    iget-wide v5, p1, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    iget-wide v5, p1, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    iget-wide v5, p1, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v1, v3}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    invoke-virtual {v1, v3}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v1, v3}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {v1, v3}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    invoke-virtual {v1, v3}, Landroidx/media3/common/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    iget-boolean v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    iget-boolean v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v1, v3}, Landroidx/media3/common/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1, v3}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentTracks:Landroidx/media3/common/Tracks;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentTracks:Landroidx/media3/common/Tracks;

    invoke-virtual {v1, v3}, Landroidx/media3/common/Tracks;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v1, v3}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v1, v3}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    iget-boolean v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$State;->discontinuityPositionMs:J

    iget-wide p0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->discontinuityPositionMs:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getPlaylist()Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    instance-of v1, v0, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    invoke-static {v0}, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;->access$000(Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$a;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-static {p0, v3, v1, v0}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->access$4800(Landroidx/media3/common/SimpleBasePlayer$State;ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands;->hashCode()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v2}, Landroidx/media3/common/PlaybackParameters;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    invoke-virtual {v2}, Landroidx/media3/common/TrackSelectionParameters;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v2}, Landroidx/media3/common/AudioAttributes;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {v2}, Landroidx/media3/common/VideoSize;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    invoke-virtual {v2}, Landroidx/media3/common/DeviceInfo;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    invoke-virtual {v2}, Landroidx/media3/common/util/Size;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v2}, Landroidx/media3/common/Metadata;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentTracks:Landroidx/media3/common/Tracks;

    invoke-virtual {v2}, Landroidx/media3/common/Tracks;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v2}, Landroidx/media3/common/MediaMetadata;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v2}, Landroidx/media3/common/MediaMetadata;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->discontinuityPositionMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int p0, v2

    add-int/2addr v1, p0

    return v1
.end method
