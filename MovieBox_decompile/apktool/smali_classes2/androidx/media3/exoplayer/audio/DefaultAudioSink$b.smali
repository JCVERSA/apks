.class abstract Landroidx/media3/exoplayer/audio/DefaultAudioSink$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method public static a(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;)J
    .locals 7

    .line 1
    iget v0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    int-to-long v0, p0

    .line 10
    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->d(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    int-to-long v0, p0

    .line 20
    iget p0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->g:I

    .line 21
    .line 22
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/x0;->d(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    int-to-long v4, p0

    .line 27
    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 28
    .line 29
    const-wide/32 v2, 0xf4240

    .line 30
    .line 31
    .line 32
    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/a1;->g1(JJJLjava/math/RoundingMode;)J

    .line 33
    .line 34
    .line 35
    move-result-wide p0

    .line 36
    :goto_0
    return-wide p0
.end method

.method public static b(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/j;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/j;->a:Landroid/media/AudioDeviceInfo;

    .line 6
    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
