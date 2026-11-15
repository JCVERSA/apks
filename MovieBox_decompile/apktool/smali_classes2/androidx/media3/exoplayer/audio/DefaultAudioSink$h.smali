.class final Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/r;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Landroidx/media3/common/audio/a;

.field public final j:Z

.field public final k:Z

.field public final l:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/r;IIIIIIILandroidx/media3/common/audio/a;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->a:Landroidx/media3/common/r;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->b:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->d:I

    .line 11
    .line 12
    iput p5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->e:I

    .line 13
    .line 14
    iput p6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->f:I

    .line 15
    .line 16
    iput p7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->g:I

    .line 17
    .line 18
    iput p8, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->h:I

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->i:Landroidx/media3/common/audio/a;

    .line 21
    .line 22
    iput-boolean p10, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->j:Z

    .line 23
    .line 24
    iput-boolean p11, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->k:Z

    .line 25
    .line 26
    iput-boolean p12, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->l:Z

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/exoplayer/audio/AudioSink$a;
    .locals 8

    .line 1
    new-instance v7, Landroidx/media3/exoplayer/audio/AudioSink$a;

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->g:I

    .line 4
    .line 5
    iget v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->e:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->f:I

    .line 8
    .line 9
    iget-boolean v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->l:Z

    .line 10
    .line 11
    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-ne v0, v5, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    move v5, v0

    .line 19
    :goto_0
    iget v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->h:I

    .line 20
    .line 21
    move-object v0, v7

    .line 22
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/audio/AudioSink$a;-><init>(IIIZZI)V

    .line 23
    .line 24
    .line 25
    return-object v7
.end method

.method public b(Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->g:I

    .line 8
    .line 9
    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->g:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget v0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->e:I

    .line 14
    .line 15
    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->e:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget v0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->f:I

    .line 20
    .line 21
    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->f:I

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget v0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->d:I

    .line 26
    .line 27
    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->d:I

    .line 28
    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->j:Z

    .line 32
    .line 33
    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->j:Z

    .line 34
    .line 35
    if-ne v0, v1, :cond_0

    .line 36
    .line 37
    iget-boolean p1, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->k:Z

    .line 38
    .line 39
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->k:Z

    .line 40
    .line 41
    if-ne p1, v0, :cond_0

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    :goto_0
    return p1
.end method

.method public c(I)Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;
    .locals 14

    .line 1
    new-instance v13, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->a:Landroidx/media3/common/r;

    .line 4
    .line 5
    iget v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->b:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    .line 8
    .line 9
    iget v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->d:I

    .line 10
    .line 11
    iget v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->e:I

    .line 12
    .line 13
    iget v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->f:I

    .line 14
    .line 15
    iget v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->g:I

    .line 16
    .line 17
    iget-object v9, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->i:Landroidx/media3/common/audio/a;

    .line 18
    .line 19
    iget-boolean v10, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->j:Z

    .line 20
    .line 21
    iget-boolean v11, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->k:Z

    .line 22
    .line 23
    iget-boolean v12, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->l:Z

    .line 24
    .line 25
    move-object v0, v13

    .line 26
    move v8, p1

    .line 27
    invoke-direct/range {v0 .. v12}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;-><init>(Landroidx/media3/common/r;IIIIIIILandroidx/media3/common/audio/a;ZZZ)V

    .line 28
    .line 29
    .line 30
    return-object v13
.end method

.method public d(J)J
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->e:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Landroidx/media3/common/util/a1;->d1(JI)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public e(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->a:Landroidx/media3/common/r;

    .line 2
    .line 3
    iget v0, v0, Landroidx/media3/common/r;->F:I

    .line 4
    .line 5
    invoke-static {p1, p2, v0}, Landroidx/media3/common/util/a1;->d1(JI)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method

.method public f()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method
