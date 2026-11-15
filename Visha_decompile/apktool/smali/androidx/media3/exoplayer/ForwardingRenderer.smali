.class public Landroidx/media3/exoplayer/ForwardingRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/Renderer;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private final renderer:Landroidx/media3/exoplayer/Renderer;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/Renderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->disable()V

    return-void
.end method

.method public enable(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object v0, p0

    iget-object v0, v0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    invoke-interface/range {v0 .. v12}, Landroidx/media3/exoplayer/Renderer;->enable(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public enableMayRenderStartOfStream()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->enableMayRenderStartOfStream()V

    return-void
.end method

.method public getCapabilities()Landroidx/media3/exoplayer/RendererCapabilities;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getCapabilities()Landroidx/media3/exoplayer/RendererCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public getDurationToProgressUs(JJ)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/Renderer;->getDurationToProgressUs(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMediaClock()Landroidx/media3/exoplayer/MediaClock;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getMediaClock()Landroidx/media3/exoplayer/MediaClock;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReadingPositionUs()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getReadingPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result p0

    return p0
.end method

.method public getStream()Landroidx/media3/exoplayer/source/SampleStream;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object p0

    return-object p0
.end method

.method public getTrackType()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result p0

    return p0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public hasReadStreamToEnd()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result p0

    return p0
.end method

.method public init(ILandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/util/Clock;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/Renderer;->init(ILandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/util/Clock;)V

    return-void
.end method

.method public isCurrentStreamFinal()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->isCurrentStreamFinal()Z

    move-result p0

    return p0
.end method

.method public isEnded()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result p0

    return p0
.end method

.method public isReady()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->isReady()Z

    move-result p0

    return p0
.end method

.method public maybeThrowStreamError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->maybeThrowStreamError()V

    return-void
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->release()V

    return-void
.end method

.method public render(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/Renderer;->render(JJ)V

    return-void
.end method

.method public replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Landroidx/media3/exoplayer/Renderer;->replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->reset()V

    return-void
.end method

.method public resetPosition(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/Renderer;->resetPosition(J)V

    return-void
.end method

.method public setCurrentStreamFinal()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->setCurrentStreamFinal()V

    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/Renderer;->setPlaybackSpeed(FF)V

    return-void
.end method

.method public setTimeline(Landroidx/media3/common/Timeline;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/Renderer;->setTimeline(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->start()V

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ForwardingRenderer;->renderer:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->stop()V

    return-void
.end method
