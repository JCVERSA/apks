.class public Landroidx/media3/exoplayer/audio/z0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b(Landroidx/media3/exoplayer/audio/AudioSink$a;Landroidx/media3/common/c;I)Landroid/media/AudioTrack;
    .locals 7

    .line 1
    new-instance v6, Landroid/media/AudioTrack;

    .line 2
    .line 3
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->d:Z

    .line 4
    .line 5
    invoke-direct {p0, p2, v0}, Landroidx/media3/exoplayer/audio/z0;->e(Landroidx/media3/common/c;Z)Landroid/media/AudioAttributes;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget p2, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->b:I

    .line 10
    .line 11
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->c:I

    .line 12
    .line 13
    iget v2, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->a:I

    .line 14
    .line 15
    invoke-static {p2, v0, v2}, Landroidx/media3/common/util/a1;->L(III)Landroid/media/AudioFormat;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v3, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->f:I

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    move-object v0, v6

    .line 23
    move v5, p3

    .line 24
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 25
    .line 26
    .line 27
    return-object v6
.end method

.method private c(Landroidx/media3/exoplayer/audio/AudioSink$a;Landroidx/media3/common/c;I)Landroid/media/AudioTrack;
    .locals 3

    .line 1
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->b:I

    .line 2
    .line 3
    iget v1, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->c:I

    .line 4
    .line 5
    iget v2, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->a:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/a1;->L(III)Landroid/media/AudioFormat;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-boolean v1, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->d:Z

    .line 12
    .line 13
    invoke-direct {p0, p2, v1}, Landroidx/media3/exoplayer/audio/z0;->e(Landroidx/media3/common/c;Z)Landroid/media/AudioAttributes;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v1, Landroid/media/AudioTrack$Builder;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p2, v0}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->f:I

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2, p3}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    sget p3, Landroidx/media3/common/util/a1;->a:I

    .line 46
    .line 47
    const/16 v0, 0x1d

    .line 48
    .line 49
    if-lt p3, v0, :cond_0

    .line 50
    .line 51
    iget-boolean p1, p1, Landroidx/media3/exoplayer/audio/AudioSink$a;->e:Z

    .line 52
    .line 53
    invoke-direct {p0, p2, p1}, Landroidx/media3/exoplayer/audio/z0;->g(Landroid/media/AudioTrack$Builder;Z)V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/audio/z0;->d(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method private e(Landroidx/media3/common/c;Z)Landroid/media/AudioAttributes;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/z0;->f()Landroid/media/AudioAttributes;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/c;->a()Landroidx/media3/common/c$d;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p1, p1, Landroidx/media3/common/c$d;->a:Landroid/media/AudioAttributes;

    .line 13
    .line 14
    return-object p1
.end method

.method private f()Landroid/media/AudioAttributes;
    .locals 2

    .line 1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method private g(Landroid/media/AudioTrack$Builder;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/audio/y0;->a(Landroid/media/AudioTrack$Builder;Z)Landroid/media/AudioTrack$Builder;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/audio/AudioSink$a;Landroidx/media3/common/c;I)Landroid/media/AudioTrack;
    .locals 2

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/z0;->c(Landroidx/media3/exoplayer/audio/AudioSink$a;Landroidx/media3/common/c;I)Landroid/media/AudioTrack;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/z0;->b(Landroidx/media3/exoplayer/audio/AudioSink$a;Landroidx/media3/common/c;I)Landroid/media/AudioTrack;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method protected d(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack$Builder;
    .locals 0

    .line 1
    return-object p1
.end method
