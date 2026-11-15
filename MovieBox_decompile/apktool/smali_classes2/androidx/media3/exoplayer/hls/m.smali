.class final Landroidx/media3/exoplayer/hls/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf2/u;


# instance fields
.field private final a:I

.field private final b:Landroidx/media3/exoplayer/hls/r;

.field private c:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/hls/r;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/m;->b:Landroidx/media3/exoplayer/hls/r;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/exoplayer/hls/m;->a:I

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Landroidx/media3/exoplayer/hls/m;->c:I

    .line 10
    .line 11
    return-void
.end method

.method private b()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/hls/m;->c:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, -0x3

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, -0x2

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/hls/m;->c:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/m;->b:Landroidx/media3/exoplayer/hls/r;

    .line 13
    .line 14
    iget v1, p0, Landroidx/media3/exoplayer/hls/m;->a:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/hls/r;->l(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Landroidx/media3/exoplayer/hls/m;->c:I

    .line 21
    .line 22
    return-void
.end method

.method public c(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/hls/m;->c:I

    .line 2
    .line 3
    const/4 v1, -0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    invoke-virtual {p2, p1}, Landroidx/media3/decoder/a;->addFlag(I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, -0x4

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/m;->b()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/m;->b:Landroidx/media3/exoplayer/hls/r;

    .line 19
    .line 20
    iget v1, p0, Landroidx/media3/exoplayer/hls/m;->c:I

    .line 21
    .line 22
    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/media3/exoplayer/hls/r;->W(ILandroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :cond_1
    return v1
.end method

.method public d()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/hls/m;->c:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/m;->b:Landroidx/media3/exoplayer/hls/r;

    .line 7
    .line 8
    iget v2, p0, Landroidx/media3/exoplayer/hls/m;->a:I

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/hls/r;->h0(I)V

    .line 11
    .line 12
    .line 13
    iput v1, p0, Landroidx/media3/exoplayer/hls/m;->c:I

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public isReady()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/hls/m;->c:I

    .line 2
    .line 3
    const/4 v1, -0x3

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/m;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/m;->b:Landroidx/media3/exoplayer/hls/r;

    .line 13
    .line 14
    iget v1, p0, Landroidx/media3/exoplayer/hls/m;->c:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/hls/r;->G(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 26
    :goto_1
    return v0
.end method

.method public maybeThrowError()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/hls/m;->c:I

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/m;->b:Landroidx/media3/exoplayer/hls/r;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/r;->L()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, -0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/m;->b:Landroidx/media3/exoplayer/hls/r;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/hls/r;->M(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void

    .line 24
    :cond_2
    new-instance v0, Landroidx/media3/exoplayer/hls/SampleQueueMappingException;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/m;->b:Landroidx/media3/exoplayer/hls/r;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/media3/exoplayer/hls/r;->getTrackGroups()Lf2/z;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget v2, p0, Landroidx/media3/exoplayer/hls/m;->a:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lf2/z;->b(I)Landroidx/media3/common/f0;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v1, v2}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v1, v1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/hls/SampleQueueMappingException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public skipData(J)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/m;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/m;->b:Landroidx/media3/exoplayer/hls/r;

    .line 8
    .line 9
    iget v1, p0, Landroidx/media3/exoplayer/hls/m;->c:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1, p2}, Landroidx/media3/exoplayer/hls/r;->g0(IJ)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method
