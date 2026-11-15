.class final Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;
.super Landroidx/media3/decoder/SimpleDecoder;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/decoder/SimpleDecoder;"
    }
.end annotation


# instance fields
.field private final o:Ljava/lang/String;

.field private p:J

.field private final q:[B

.field private r:Landroidx/media3/common/r;

.field private volatile s:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(IIIILandroidx/media3/common/r;)V
    .locals 1

    .line 1
    new-array p1, p1, [Landroidx/media3/decoder/DecoderInputBuffer;

    .line 2
    .line 3
    new-array p2, p2, [Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/media3/decoder/SimpleDecoder;-><init>([Landroidx/media3/decoder/DecoderInputBuffer;[Landroidx/media3/decoder/h;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->d()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p5, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/String;

    .line 25
    .line 26
    iput-object p1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->o:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p2, p5, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v0, p5, Landroidx/media3/common/r;->r:Ljava/util/List;

    .line 31
    .line 32
    invoke-static {p2, v0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->x(Ljava/lang/String;Ljava/util/List;)[B

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iput-object p2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->q:[B

    .line 37
    .line 38
    iput-object p5, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->r:Landroidx/media3/common/r;

    .line 39
    .line 40
    invoke-direct {p0, p1, p2, p4}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegInitialize(Ljava/lang/String;[BI)J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    iput-wide p1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->p:J

    .line 45
    .line 46
    const-wide/16 p4, 0x0

    .line 47
    .line 48
    cmp-long p1, p1, p4

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0, p3}, Landroidx/media3/decoder/SimpleDecoder;->s(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    .line 57
    .line 58
    const-string p2, "Failed to initialize decoder."

    .line 59
    .line 60
    invoke-direct {p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_1
    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    .line 65
    .line 66
    const-string p2, "Failed to load decoder native library."

    .line 67
    .line 68
    invoke-direct {p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method

.method private native ffmpegInitialize(Ljava/lang/String;[BI)J
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private native ffmpegReceiveFrame(JILandroidx/media3/decoder/VideoDecoderOutputBuffer;Z)I
.end method

.method private native ffmpegRelease(J)V
.end method

.method private native ffmpegRenderFrame(JLandroid/view/Surface;Landroidx/media3/decoder/VideoDecoderOutputBuffer;II)I
.end method

.method private native ffmpegReset(J)J
.end method

.method private native ffmpegSendPacket(JLjava/nio/ByteBuffer;IJ)I
.end method

.method public static synthetic t(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;Landroidx/media3/decoder/h;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->y(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;Landroidx/media3/decoder/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static x(Ljava/lang/String;Ljava/util/List;)[B
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const-string v2, "video/hevc"

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    const-string v2, "video/avc"

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, [B

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, [B

    .line 42
    .line 43
    array-length v1, p0

    .line 44
    array-length v2, p1

    .line 45
    add-int/2addr v1, v2

    .line 46
    new-array v1, v1, [B

    .line 47
    .line 48
    array-length v2, p0

    .line 49
    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    .line 51
    .line 52
    array-length p0, p0

    .line 53
    array-length v2, p1

    .line 54
    invoke-static {p1, v0, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, [B

    .line 63
    .line 64
    return-object p0
.end method

.method private static synthetic y(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;Landroidx/media3/decoder/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/decoder/SimpleDecoder;->p(Landroidx/media3/decoder/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->s:I

    .line 2
    .line 3
    return-void
.end method

.method protected e()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method protected bridge synthetic f()Landroidx/media3/decoder/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->u()Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected bridge synthetic g(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->v(Ljava/lang/Throwable;)Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ffmpeg"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->c()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "-"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->o:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method protected bridge synthetic h(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/h;Z)Landroidx/media3/decoder/DecoderException;
    .locals 0

    .line 1
    check-cast p2, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->w(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/VideoDecoderOutputBuffer;Z)Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/media3/decoder/SimpleDecoder;->release()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->p:J

    .line 5
    .line 6
    invoke-direct {p0, v0, v1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegRelease(J)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->p:J

    .line 12
    .line 13
    return-void
.end method

.method protected u()Landroidx/media3/decoder/VideoDecoderOutputBuffer;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 2
    .line 3
    new-instance v1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/c;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/c;-><init>(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;-><init>(Landroidx/media3/decoder/h$a;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method protected v(Ljava/lang/Throwable;)Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;
    .locals 2

    .line 1
    new-instance v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    .line 2
    .line 3
    const-string v1, "Unexpected decode error"

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method protected w(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/VideoDecoderOutputBuffer;Z)Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;
    .locals 12

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->p:J

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegReset(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->p:J

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long p3, v0, v2

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    .line 18
    .line 19
    const-string p2, "Error resetting (see logcat)."

    .line 20
    .line 21
    invoke-direct {p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    iget-object p3, p1, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    invoke-static {p3}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    move-object v3, p3

    .line 32
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    iget-wide v1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->p:J

    .line 39
    .line 40
    iget-wide v5, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 41
    .line 42
    move-object v0, p0

    .line 43
    invoke-direct/range {v0 .. v6}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegSendPacket(JLjava/nio/ByteBuffer;IJ)I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    const/4 v0, 0x0

    .line 48
    const/4 v1, -0x1

    .line 49
    const/4 v2, 0x1

    .line 50
    if-ne p3, v1, :cond_1

    .line 51
    .line 52
    iput-boolean v2, p2, Landroidx/media3/decoder/h;->shouldBeSkipped:Z

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_1
    const/4 v3, -0x3

    .line 56
    const-string v4, "ffmpegDecode error: (see logcat)"

    .line 57
    .line 58
    const/4 v5, -0x2

    .line 59
    if-ne p3, v3, :cond_2

    .line 60
    .line 61
    new-instance p3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v3, "VIDEO_DECODER_ERROR_READ_FRAME: timeUs="

    .line 67
    .line 68
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-wide v6, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 72
    .line 73
    invoke-virtual {p3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    if-ne p3, v5, :cond_3

    .line 78
    .line 79
    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    .line 80
    .line 81
    invoke-direct {p1, v4}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_3
    :goto_0
    iget-wide v6, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 86
    .line 87
    invoke-virtual {p0, v6, v7}, Landroidx/media3/decoder/SimpleDecoder;->l(J)Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    xor-int/lit8 v11, p3, 0x1

    .line 92
    .line 93
    iget-wide v7, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->p:J

    .line 94
    .line 95
    iget v9, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->s:I

    .line 96
    .line 97
    move-object v6, p0

    .line 98
    move-object v10, p2

    .line 99
    invoke-direct/range {v6 .. v11}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegReceiveFrame(JILandroidx/media3/decoder/VideoDecoderOutputBuffer;Z)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-ne v3, v5, :cond_4

    .line 104
    .line 105
    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    .line 106
    .line 107
    invoke-direct {p1, v4}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-object p1

    .line 111
    :cond_4
    if-ne v3, v1, :cond_5

    .line 112
    .line 113
    iput-boolean v2, p2, Landroidx/media3/decoder/h;->shouldBeSkipped:Z

    .line 114
    .line 115
    :cond_5
    if-eqz p3, :cond_6

    .line 116
    .line 117
    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->a:Landroidx/media3/common/r;

    .line 118
    .line 119
    iput-object p1, p2, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->format:Landroidx/media3/common/r;

    .line 120
    .line 121
    :cond_6
    return-object v0
.end method

.method public z(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .locals 9

    .line 1
    iget v0, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->mode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-wide v3, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->p:J

    .line 7
    .line 8
    iget v7, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    .line 9
    .line 10
    iget v8, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    .line 11
    .line 12
    move-object v2, p0

    .line 13
    move-object v5, p2

    .line 14
    move-object v6, p1

    .line 15
    invoke-direct/range {v2 .. v8}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->ffmpegRenderFrame(JLandroid/view/Surface;Landroidx/media3/decoder/VideoDecoderOutputBuffer;II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 p2, -0x2

    .line 20
    if-eq p1, p2, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    .line 24
    .line 25
    const-string p2, "Buffer render error: "

    .line 26
    .line 27
    invoke-direct {p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    .line 32
    .line 33
    const-string p2, "Invalid output mode."

    .line 34
    .line 35
    invoke-direct {p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method
