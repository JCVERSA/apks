.class public Landroidx/media3/exoplayer/audio/DefaultAudioSink$i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lt1/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field private final a:[Landroidx/media3/common/audio/AudioProcessor;

.field private final b:Landroidx/media3/exoplayer/audio/d1;

.field private final c:Landroidx/media3/common/audio/d;


# direct methods
.method public varargs constructor <init>([Landroidx/media3/common/audio/AudioProcessor;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/audio/d1;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/d1;-><init>()V

    new-instance v1, Landroidx/media3/common/audio/d;

    invoke-direct {v1}, Landroidx/media3/common/audio/d;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$i;-><init>([Landroidx/media3/common/audio/AudioProcessor;Landroidx/media3/exoplayer/audio/d1;Landroidx/media3/common/audio/d;)V

    return-void
.end method

.method public constructor <init>([Landroidx/media3/common/audio/AudioProcessor;Landroidx/media3/exoplayer/audio/d1;Landroidx/media3/common/audio/d;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroidx/media3/common/audio/AudioProcessor;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$i;->a:[Landroidx/media3/common/audio/AudioProcessor;

    const/4 v1, 0x0

    .line 4
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$i;->b:Landroidx/media3/exoplayer/audio/d1;

    .line 6
    iput-object p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$i;->c:Landroidx/media3/common/audio/d;

    .line 7
    array-length v1, p1

    aput-object p2, v0, v1

    .line 8
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object p3, v0, p1

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$i;->b:Landroidx/media3/exoplayer/audio/d1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/d1;->y(Z)V

    .line 4
    .line 5
    .line 6
    return p1
.end method

.method public b(Landroidx/media3/common/z;)Landroidx/media3/common/z;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$i;->c:Landroidx/media3/common/audio/d;

    .line 2
    .line 3
    iget v1, p1, Landroidx/media3/common/z;->a:F

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/common/audio/d;->e(F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$i;->c:Landroidx/media3/common/audio/d;

    .line 9
    .line 10
    iget v1, p1, Landroidx/media3/common/z;->b:F

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/media3/common/audio/d;->d(F)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public getAudioProcessors()[Landroidx/media3/common/audio/AudioProcessor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$i;->a:[Landroidx/media3/common/audio/AudioProcessor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaDuration(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$i;->c:Landroidx/media3/common/audio/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/audio/d;->isActive()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$i;->c:Landroidx/media3/common/audio/d;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/audio/d;->c(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    :cond_0
    return-wide p1
.end method

.method public getSkippedOutputFrameCount()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$i;->b:Landroidx/media3/exoplayer/audio/d1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/d1;->p()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
