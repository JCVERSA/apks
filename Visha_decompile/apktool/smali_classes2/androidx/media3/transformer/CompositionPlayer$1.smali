.class Landroidx/media3/transformer/CompositionPlayer$1;
.super Landroidx/media3/exoplayer/source/WrappingMediaSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/transformer/CompositionPlayer;->wrapWithSpeedChangingMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/audio/SpeedProvider;J)Landroidx/media3/exoplayer/source/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/transformer/CompositionPlayer;

.field final synthetic val$durationUs:J

.field final synthetic val$speedProvider:Landroidx/media3/common/audio/SpeedProvider;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/CompositionPlayer;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/audio/SpeedProvider;J)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$1;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    iput-object p3, p0, Landroidx/media3/transformer/CompositionPlayer$1;->val$speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    iput-wide p4, p0, Landroidx/media3/transformer/CompositionPlayer$1;->val$durationUs:J

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/source/WrappingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 1

    new-instance v0, Landroidx/media3/transformer/SpeedProviderMediaPeriod;

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$1;->val$speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-direct {v0, p1, p0}, Landroidx/media3/transformer/SpeedProviderMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;Landroidx/media3/common/audio/SpeedProvider;)V

    return-object v0
.end method

.method public onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/CompositionPlayer$1$1;

    invoke-direct {v0, p0, p1, p1}, Landroidx/media3/transformer/CompositionPlayer$1$1;-><init>(Landroidx/media3/transformer/CompositionPlayer$1;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V

    invoke-super {p0, v0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    check-cast p1, Landroidx/media3/transformer/SpeedProviderMediaPeriod;

    iget-object p1, p1, Landroidx/media3/transformer/SpeedProviderMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-super {p0, p1}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method
