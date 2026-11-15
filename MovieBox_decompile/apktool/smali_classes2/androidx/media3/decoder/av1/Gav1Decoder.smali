.class public final Landroidx/media3/decoder/av1/Gav1Decoder;
.super Landroidx/media3/decoder/SimpleDecoder;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/decoder/SimpleDecoder;"
    }
.end annotation


# instance fields
.field private final o:J

.field private volatile p:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

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
    invoke-static {}, Landroidx/media3/decoder/av1/b;->a()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/media3/decoder/av1/Gav1Decoder;->gav1GetThreads()I

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    if-gtz p4, :cond_0

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    .line 27
    .line 28
    .line 29
    move-result p4

    .line 30
    :cond_0
    invoke-direct {p0, p4}, Landroidx/media3/decoder/av1/Gav1Decoder;->gav1Init(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    iput-wide p1, p0, Landroidx/media3/decoder/av1/Gav1Decoder;->o:J

    .line 35
    .line 36
    const-wide/16 v0, 0x0

    .line 37
    .line 38
    cmp-long p4, p1, v0

    .line 39
    .line 40
    if-eqz p4, :cond_1

    .line 41
    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/media3/decoder/av1/Gav1Decoder;->gav1CheckError(J)I

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    if-eqz p4, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, p3}, Landroidx/media3/decoder/SimpleDecoder;->s(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    new-instance p3, Landroidx/media3/decoder/av1/Gav1DecoderException;

    .line 53
    .line 54
    new-instance p4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v0, "Failed to initialize decoder. Error: "

    .line 60
    .line 61
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1, p2}, Landroidx/media3/decoder/av1/Gav1Decoder;->gav1GetErrorMessage(J)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p3, p1}, Landroidx/media3/decoder/av1/Gav1DecoderException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p3

    .line 79
    :cond_2
    new-instance p1, Landroidx/media3/decoder/av1/Gav1DecoderException;

    .line 80
    .line 81
    const-string p2, "Failed to load decoder native library."

    .line 82
    .line 83
    invoke-direct {p1, p2}, Landroidx/media3/decoder/av1/Gav1DecoderException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method private native gav1CheckError(J)I
.end method

.method private native gav1Close(J)V
.end method

.method private native gav1Decode(JLjava/nio/ByteBuffer;I)I
.end method

.method private native gav1GetErrorMessage(J)Ljava/lang/String;
.end method

.method private native gav1GetFrame(JLandroidx/media3/decoder/VideoDecoderOutputBuffer;Z)I
.end method

.method private native gav1GetThreads()I
.end method

.method private native gav1Init(I)J
.end method

.method private native gav1ReleaseFrame(JLandroidx/media3/decoder/VideoDecoderOutputBuffer;)V
.end method

.method private native gav1RenderFrame(JLandroid/view/Surface;Landroidx/media3/decoder/VideoDecoderOutputBuffer;)I
.end method


# virtual methods
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
    invoke-virtual {p0}, Landroidx/media3/decoder/av1/Gav1Decoder;->t()Landroidx/media3/decoder/VideoDecoderOutputBuffer;

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
    invoke-virtual {p0, p1}, Landroidx/media3/decoder/av1/Gav1Decoder;->u(Ljava/lang/Throwable;)Landroidx/media3/decoder/av1/Gav1DecoderException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "libgav1"

    .line 2
    .line 3
    return-object v0
.end method

.method protected bridge synthetic h(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/h;Z)Landroidx/media3/decoder/DecoderException;
    .locals 0

    .line 1
    check-cast p2, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/decoder/av1/Gav1Decoder;->v(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/VideoDecoderOutputBuffer;Z)Landroidx/media3/decoder/av1/Gav1DecoderException;

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
    iget-wide v0, p0, Landroidx/media3/decoder/av1/Gav1Decoder;->o:J

    .line 5
    .line 6
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/av1/Gav1Decoder;->gav1Close(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected t()Landroidx/media3/decoder/VideoDecoderOutputBuffer;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 2
    .line 3
    new-instance v1, Landroidx/media3/decoder/av1/a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/media3/decoder/av1/a;-><init>(Landroidx/media3/decoder/av1/Gav1Decoder;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;-><init>(Landroidx/media3/decoder/h$a;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method protected u(Ljava/lang/Throwable;)Landroidx/media3/decoder/av1/Gav1DecoderException;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/decoder/av1/Gav1DecoderException;

    .line 2
    .line 3
    const-string v1, "Unexpected decode error"

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Landroidx/media3/decoder/av1/Gav1DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method protected v(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/VideoDecoderOutputBuffer;Z)Landroidx/media3/decoder/av1/Gav1DecoderException;
    .locals 5

    .line 1
    iget-object p3, p1, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-static {p3}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-wide v1, p0, Landroidx/media3/decoder/av1/Gav1Decoder;->o:J

    .line 14
    .line 15
    invoke-direct {p0, v1, v2, p3, v0}, Landroidx/media3/decoder/av1/Gav1Decoder;->gav1Decode(JLjava/nio/ByteBuffer;I)I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    new-instance p1, Landroidx/media3/decoder/av1/Gav1DecoderException;

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string p3, "gav1Decode error: "

    .line 29
    .line 30
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-wide v0, p0, Landroidx/media3/decoder/av1/Gav1Decoder;->o:J

    .line 34
    .line 35
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/av1/Gav1Decoder;->gav1GetErrorMessage(J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p2}, Landroidx/media3/decoder/av1/Gav1DecoderException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_0
    iget-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 51
    .line 52
    invoke-virtual {p0, v0, v1}, Landroidx/media3/decoder/SimpleDecoder;->l(J)Z

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    xor-int/lit8 v0, p3, 0x1

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    if-eqz p3, :cond_1

    .line 60
    .line 61
    iget-wide v2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 62
    .line 63
    iget v4, p0, Landroidx/media3/decoder/av1/Gav1Decoder;->p:I

    .line 64
    .line 65
    invoke-virtual {p2, v2, v3, v4, v1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->init(JILjava/nio/ByteBuffer;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-wide v2, p0, Landroidx/media3/decoder/av1/Gav1Decoder;->o:J

    .line 69
    .line 70
    invoke-direct {p0, v2, v3, p2, v0}, Landroidx/media3/decoder/av1/Gav1Decoder;->gav1GetFrame(JLandroidx/media3/decoder/VideoDecoderOutputBuffer;Z)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    new-instance p1, Landroidx/media3/decoder/av1/Gav1DecoderException;

    .line 77
    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string p3, "gav1GetFrame error: "

    .line 84
    .line 85
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-wide v0, p0, Landroidx/media3/decoder/av1/Gav1Decoder;->o:J

    .line 89
    .line 90
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/av1/Gav1Decoder;->gav1GetErrorMessage(J)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-direct {p1, p2}, Landroidx/media3/decoder/av1/Gav1DecoderException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-object p1

    .line 105
    :cond_2
    const/4 v2, 0x2

    .line 106
    if-ne v0, v2, :cond_3

    .line 107
    .line 108
    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p2, Landroidx/media3/decoder/h;->shouldBeSkipped:Z

    .line 110
    .line 111
    :cond_3
    if-eqz p3, :cond_4

    .line 112
    .line 113
    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->a:Landroidx/media3/common/r;

    .line 114
    .line 115
    iput-object p1, p2, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->format:Landroidx/media3/common/r;

    .line 116
    .line 117
    :cond_4
    return-object v1
.end method

.method protected w(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V
    .locals 2

    .line 1
    iget v0, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->mode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p1, Landroidx/media3/decoder/h;->shouldBeSkipped:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/media3/decoder/av1/Gav1Decoder;->o:J

    .line 11
    .line 12
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/decoder/av1/Gav1Decoder;->gav1ReleaseFrame(JLandroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroidx/media3/decoder/SimpleDecoder;->p(Landroidx/media3/decoder/h;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public x(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget v0, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->mode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/media3/decoder/av1/Gav1Decoder;->o:J

    .line 7
    .line 8
    invoke-direct {p0, v0, v1, p2, p1}, Landroidx/media3/decoder/av1/Gav1Decoder;->gav1RenderFrame(JLandroid/view/Surface;Landroidx/media3/decoder/VideoDecoderOutputBuffer;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Landroidx/media3/decoder/av1/Gav1DecoderException;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v0, "Buffer render error: "

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-wide v0, p0, Landroidx/media3/decoder/av1/Gav1Decoder;->o:J

    .line 28
    .line 29
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/av1/Gav1Decoder;->gav1GetErrorMessage(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-direct {p1, p2}, Landroidx/media3/decoder/av1/Gav1DecoderException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    new-instance p1, Landroidx/media3/decoder/av1/Gav1DecoderException;

    .line 45
    .line 46
    const-string p2, "Invalid output mode."

    .line 47
    .line 48
    invoke-direct {p1, p2}, Landroidx/media3/decoder/av1/Gav1DecoderException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public y(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/decoder/av1/Gav1Decoder;->p:I

    .line 2
    .line 3
    return-void
.end method
