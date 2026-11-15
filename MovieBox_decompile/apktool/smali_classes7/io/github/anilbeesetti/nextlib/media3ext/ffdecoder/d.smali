.class public final Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/d;
.super Landroidx/media3/exoplayer/video/b;
.source "source.java"


# static fields
.field private static final b0:I


# instance fields
.field private final X:I

.field private final Y:I

.field private final Z:I

.field private a0:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x500

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->k(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v2, 0x2d0

    .line 10
    .line 11
    invoke-static {v2, v1}, Landroidx/media3/common/util/a1;->k(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    mul-int/2addr v0, v1

    .line 16
    mul-int/lit16 v0, v0, 0x1800

    .line 17
    .line 18
    div-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    sput v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/d;->b0:I

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(JLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;I)V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x4

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 2
    invoke-direct/range {v1 .. v9}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/d;-><init>(JLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;IIII)V

    return-void
.end method

.method public constructor <init>(JLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;IIII)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/video/b;-><init>(JLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;I)V

    .line 4
    iput p6, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/d;->Z:I

    .line 5
    iput p7, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/d;->X:I

    .line 6
    iput p8, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/d;->Y:I

    return-void
.end method


# virtual methods
.method protected R(Landroidx/media3/common/r;Landroidx/media3/decoder/b;)Landroidx/media3/decoder/g;
    .locals 6

    .line 1
    const-string p2, "createFfmpegVideoDecoder"

    .line 2
    .line 3
    invoke-static {p2}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p1, Landroidx/media3/common/r;->p:I

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    if-eq p2, v0, :cond_0

    .line 10
    .line 11
    :goto_0
    move v3, p2

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    sget p2, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/d;->b0:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :goto_1
    new-instance p2, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    .line 17
    .line 18
    iget v1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/d;->X:I

    .line 19
    .line 20
    iget v2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/d;->Y:I

    .line 21
    .line 22
    iget v4, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/d;->Z:I

    .line 23
    .line 24
    move-object v0, p2

    .line 25
    move-object v5, p1

    .line 26
    invoke-direct/range {v0 .. v5}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;-><init>(IIIILandroidx/media3/common/r;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/d;->a0:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    .line 30
    .line 31
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    .line 32
    .line 33
    .line 34
    return-object p2
.end method

.method public final a(Landroidx/media3/common/r;)I
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/media3/common/y;->t(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->e(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->a(I)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_1
    iget-object p1, p1, Landroidx/media3/common/r;->s:Landroidx/media3/common/DrmInitData;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const/4 p1, 0x2

    .line 42
    invoke-static {p1}, Landroidx/media3/exoplayer/x3;->a(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    :cond_2
    const/4 p1, 0x4

    .line 48
    const/16 v0, 0x10

    .line 49
    .line 50
    invoke-static {p1, v0, v2}, Landroidx/media3/exoplayer/x3;->b(III)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    return p1

    .line 55
    :cond_3
    :goto_0
    return v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "FfmpegVideoRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method protected q0(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/d;->a0:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->z(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    .line 13
    .line 14
    const-string p2, "Failed to render output buffer to surface: decoder is not initialized."

    .line 15
    .line 16
    invoke-direct {p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method protected s0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/d;->a0:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->A(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
