.class final Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;
.super Landroidx/media3/decoder/SimpleDecoder;
.source "source.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UnsafeOptInUsageError"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/decoder/SimpleDecoder;"
    }
.end annotation


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:[B

.field private final q:I

.field private r:I

.field private s:J

.field private t:Z

.field private volatile u:I

.field private volatile v:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/r;IIIZ)V
    .locals 6

    .line 1
    new-array p2, p2, [Landroidx/media3/decoder/DecoderInputBuffer;

    .line 2
    .line 3
    new-array p3, p3, [Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Landroidx/media3/decoder/SimpleDecoder;-><init>([Landroidx/media3/decoder/DecoderInputBuffer;[Landroidx/media3/decoder/h;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->d()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_3

    .line 13
    .line 14
    iget-object p2, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object p2, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    move-object v1, p2

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    iput-object v1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->o:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p2, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p3, p1, Landroidx/media3/common/r;->r:Ljava/util/List;

    .line 37
    .line 38
    invoke-static {p2, p3}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->A(Ljava/lang/String;Ljava/util/List;)[B

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iput-object v2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->p:[B

    .line 43
    .line 44
    if-eqz p5, :cond_0

    .line 45
    .line 46
    const/4 p2, 0x4

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p2, 0x2

    .line 49
    :goto_0
    iput p2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->q:I

    .line 50
    .line 51
    if-eqz p5, :cond_1

    .line 52
    .line 53
    const p2, 0x1fffe

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const p2, 0xffff

    .line 58
    .line 59
    .line 60
    :goto_1
    iput p2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->r:I

    .line 61
    .line 62
    iget v4, p1, Landroidx/media3/common/r;->F:I

    .line 63
    .line 64
    iget v5, p1, Landroidx/media3/common/r;->E:I

    .line 65
    .line 66
    move-object v0, p0

    .line 67
    move v3, p5

    .line 68
    invoke-direct/range {v0 .. v5}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->ffmpegInitialize(Ljava/lang/String;[BZII)J

    .line 69
    .line 70
    .line 71
    move-result-wide p1

    .line 72
    iput-wide p1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->s:J

    .line 73
    .line 74
    const-wide/16 v0, 0x0

    .line 75
    .line 76
    cmp-long p1, p1, v0

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    invoke-virtual {p0, p4}, Landroidx/media3/decoder/SimpleDecoder;->s(I)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    .line 85
    .line 86
    const-string p2, "Initialization failed."

    .line 87
    .line 88
    invoke-direct {p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_3
    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    .line 93
    .line 94
    const-string p2, "Failed to load decoder native libraries."

    .line 95
    .line 96
    invoke-direct {p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1
.end method

.method private static A(Ljava/lang/String;Ljava/util/List;)[B
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v2

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    sparse-switch v3, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :sswitch_0
    const-string v3, "audio/opus"

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x3

    .line 32
    goto :goto_0

    .line 33
    :sswitch_1
    const-string v3, "audio/alac"

    .line 34
    .line 35
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v1, 0x2

    .line 43
    goto :goto_0

    .line 44
    :sswitch_2
    const-string v3, "audio/mp4a-latm"

    .line 45
    .line 46
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const/4 v1, 0x1

    .line 54
    goto :goto_0

    .line 55
    :sswitch_3
    const-string v3, "audio/vorbis"

    .line 56
    .line 57
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    move v1, v0

    .line 65
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :pswitch_0
    invoke-static {p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->x(Ljava/util/List;)[B

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    goto :goto_1

    .line 74
    :pswitch_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    move-object v2, p0

    .line 79
    check-cast v2, [B

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :pswitch_2
    invoke-static {p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->C(Ljava/util/List;)[B

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    :goto_1
    return-object v2

    .line 87
    :sswitch_data_0
    .sparse-switch
        -0x3bd43e14 -> :sswitch_3
        -0x3313c2e -> :sswitch_2
        0x59ac6426 -> :sswitch_1
        0x59b2d2d8 -> :sswitch_0
    .end sparse-switch

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static C(Ljava/util/List;)[B
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, [B

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, [B

    .line 14
    .line 15
    array-length v3, v1

    .line 16
    array-length v4, p0

    .line 17
    add-int/2addr v3, v4

    .line 18
    add-int/lit8 v3, v3, 0x6

    .line 19
    .line 20
    new-array v3, v3, [B

    .line 21
    .line 22
    array-length v4, v1

    .line 23
    shr-int/lit8 v4, v4, 0x8

    .line 24
    .line 25
    int-to-byte v4, v4

    .line 26
    aput-byte v4, v3, v0

    .line 27
    .line 28
    array-length v4, v1

    .line 29
    and-int/lit16 v4, v4, 0xff

    .line 30
    .line 31
    int-to-byte v4, v4

    .line 32
    aput-byte v4, v3, v2

    .line 33
    .line 34
    array-length v2, v1

    .line 35
    const/4 v4, 0x2

    .line 36
    invoke-static {v1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    array-length v2, v1

    .line 40
    add-int/2addr v2, v4

    .line 41
    aput-byte v0, v3, v2

    .line 42
    .line 43
    array-length v2, v1

    .line 44
    add-int/lit8 v2, v2, 0x3

    .line 45
    .line 46
    aput-byte v0, v3, v2

    .line 47
    .line 48
    array-length v2, v1

    .line 49
    add-int/lit8 v2, v2, 0x4

    .line 50
    .line 51
    array-length v4, p0

    .line 52
    shr-int/lit8 v4, v4, 0x8

    .line 53
    .line 54
    int-to-byte v4, v4

    .line 55
    aput-byte v4, v3, v2

    .line 56
    .line 57
    array-length v2, v1

    .line 58
    add-int/lit8 v2, v2, 0x5

    .line 59
    .line 60
    array-length v4, p0

    .line 61
    and-int/lit16 v4, v4, 0xff

    .line 62
    .line 63
    int-to-byte v4, v4

    .line 64
    aput-byte v4, v3, v2

    .line 65
    .line 66
    array-length v1, v1

    .line 67
    add-int/lit8 v1, v1, 0x6

    .line 68
    .line 69
    array-length v2, p0

    .line 70
    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    return-object v3
.end method

.method private static synthetic D(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;Landroidx/media3/decoder/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/decoder/SimpleDecoder;->p(Landroidx/media3/decoder/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private native ffmpegDecode(JLjava/nio/ByteBuffer;ILandroidx/media3/decoder/SimpleDecoderOutputBuffer;Ljava/nio/ByteBuffer;I)I
.end method

.method private native ffmpegGetChannelCount(J)I
.end method

.method private native ffmpegGetSampleRate(J)I
.end method

.method private native ffmpegInitialize(Ljava/lang/String;[BZII)J
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private native ffmpegRelease(J)V
.end method

.method private native ffmpegReset(J[B)J
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private growOutputBuffer(Landroidx/media3/decoder/SimpleDecoderOutputBuffer;I)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput p2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->r:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->a(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public static synthetic t(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;Landroidx/media3/decoder/h;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->D(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;Landroidx/media3/decoder/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static x(Ljava/util/List;)[B
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, [B

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    add-int/lit8 v1, v1, 0xc

    .line 10
    .line 11
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    const v1, 0x616c6163

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    array-length v1, p0

    .line 28
    invoke-virtual {v2, p0, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method


# virtual methods
.method public B()I
    .locals 1

    .line 1
    iget v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->v:I

    .line 2
    .line 3
    return v0
.end method

.method protected e()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->b()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(II)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method protected bridge synthetic f()Landroidx/media3/decoder/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->u()Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

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
    invoke-virtual {p0, p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->v(Ljava/lang/Throwable;)Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

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
    iget-object v1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->o:Ljava/lang/String;

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
    check-cast p2, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->w(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/SimpleDecoderOutputBuffer;Z)Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

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
    iget-wide v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->s:J

    .line 5
    .line 6
    invoke-direct {p0, v0, v1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->ffmpegRelease(J)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->s:J

    .line 12
    .line 13
    return-void
.end method

.method protected u()Landroidx/media3/decoder/SimpleDecoderOutputBuffer;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 2
    .line 3
    new-instance v1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/a;-><init>(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;-><init>(Landroidx/media3/decoder/h$a;)V

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

.method protected w(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/SimpleDecoderOutputBuffer;Z)Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;
    .locals 8

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->s:J

    .line 4
    .line 5
    iget-object p3, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->p:[B

    .line 6
    .line 7
    invoke-direct {p0, v0, v1, p3}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->ffmpegReset(J[B)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->s:J

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long p3, v0, v2

    .line 16
    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    .line 20
    .line 21
    const-string p2, "Error resetting (see logcat)."

    .line 22
    .line 23
    invoke-direct {p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    iget-object p3, p1, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    invoke-static {p3}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    move-object v3, p3

    .line 34
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    iget-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 41
    .line 42
    iget p1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->r:I

    .line 43
    .line 44
    invoke-virtual {p2, v0, v1, p1}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->b(JI)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    iget-wide v1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->s:J

    .line 49
    .line 50
    iget v7, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->r:I

    .line 51
    .line 52
    move-object v0, p0

    .line 53
    move-object v5, p2

    .line 54
    invoke-direct/range {v0 .. v7}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->ffmpegDecode(JLjava/nio/ByteBuffer;ILandroidx/media3/decoder/SimpleDecoderOutputBuffer;Ljava/nio/ByteBuffer;I)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/4 p3, -0x2

    .line 59
    if-ne p1, p3, :cond_1

    .line 60
    .line 61
    new-instance p1, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;

    .line 62
    .line 63
    const-string p2, "Error decoding (see logcat)."

    .line 64
    .line 65
    invoke-direct {p1, p2}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_1
    const/4 p3, -0x1

    .line 70
    const/4 v0, 0x0

    .line 71
    const/4 v1, 0x1

    .line 72
    if-ne p1, p3, :cond_2

    .line 73
    .line 74
    iput-boolean v1, p2, Landroidx/media3/decoder/h;->shouldBeSkipped:Z

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_2
    if-nez p1, :cond_3

    .line 78
    .line 79
    iput-boolean v1, p2, Landroidx/media3/decoder/h;->shouldBeSkipped:Z

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_3
    iget-boolean p3, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->t:Z

    .line 83
    .line 84
    if-nez p3, :cond_5

    .line 85
    .line 86
    iget-wide v2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->s:J

    .line 87
    .line 88
    invoke-direct {p0, v2, v3}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->ffmpegGetChannelCount(J)I

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    iput p3, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->u:I

    .line 93
    .line 94
    iget-wide v2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->s:J

    .line 95
    .line 96
    invoke-direct {p0, v2, v3}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->ffmpegGetSampleRate(J)I

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    iput p3, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->v:I

    .line 101
    .line 102
    iget p3, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->v:I

    .line 103
    .line 104
    if-nez p3, :cond_4

    .line 105
    .line 106
    const-string p3, "alac"

    .line 107
    .line 108
    iget-object v2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->o:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    if-eqz p3, :cond_4

    .line 115
    .line 116
    iget-object p3, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->p:[B

    .line 117
    .line 118
    invoke-static {p3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    new-instance p3, Landroidx/media3/common/util/j0;

    .line 122
    .line 123
    iget-object v2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->p:[B

    .line 124
    .line 125
    invoke-direct {p3, v2}, Landroidx/media3/common/util/j0;-><init>([B)V

    .line 126
    .line 127
    .line 128
    iget-object v2, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->p:[B

    .line 129
    .line 130
    array-length v2, v2

    .line 131
    add-int/lit8 v2, v2, -0x4

    .line 132
    .line 133
    invoke-virtual {p3, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3}, Landroidx/media3/common/util/j0;->L()I

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    iput p3, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->v:I

    .line 141
    .line 142
    :cond_4
    iput-boolean v1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->t:Z

    .line 143
    .line 144
    :cond_5
    iget-object p2, p2, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->b:Ljava/nio/ByteBuffer;

    .line 145
    .line 146
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    check-cast p2, Ljava/nio/ByteBuffer;

    .line 151
    .line 152
    const/4 p3, 0x0

    .line 153
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 157
    .line 158
    .line 159
    return-object v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->q:I

    .line 2
    .line 3
    return v0
.end method
