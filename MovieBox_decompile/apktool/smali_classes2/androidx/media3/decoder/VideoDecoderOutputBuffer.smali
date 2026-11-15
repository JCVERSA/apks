.class public Landroidx/media3/decoder/VideoDecoderOutputBuffer;
.super Landroidx/media3/decoder/h;
.source "source.java"


# static fields
.field public static final COLORSPACE_BT2020:I = 0x3

.field public static final COLORSPACE_BT601:I = 0x1

.field public static final COLORSPACE_BT709:I = 0x2

.field public static final COLORSPACE_UNKNOWN:I


# instance fields
.field public colorspace:I

.field public data:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public decoderPrivate:I

.field public format:Landroidx/media3/common/r;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public height:I

.field public mode:I

.field private final owner:Landroidx/media3/decoder/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/decoder/h$a;"
        }
    .end annotation
.end field

.field public supplementalData:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public width:I

.field public yuvPlanes:[Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public yuvStrides:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/decoder/h$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/decoder/h$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/media3/decoder/h;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->owner:Landroidx/media3/decoder/h$a;

    .line 5
    .line 6
    return-void
.end method

.method private static isSafeToMultiply(II)Z
    .locals 1

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    if-ltz p1, :cond_1

    .line 4
    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    const v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    div-int/2addr v0, p1

    .line 11
    if-ge p0, v0, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method


# virtual methods
.method public init(JILjava/nio/ByteBuffer;)V
    .locals 0
    .param p4    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-wide p1, p0, Landroidx/media3/decoder/h;->timeUs:J

    .line 2
    .line 3
    iput p3, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->mode:I

    .line 4
    .line 5
    if-eqz p4, :cond_2

    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    const/high16 p1, 0x10000000

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/media3/decoder/a;->addFlag(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p4}, Ljava/nio/Buffer;->limit()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object p2, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-ge p2, p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    :goto_1
    iget-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    :goto_2
    return-void
.end method

.method public initForPrivateFrame(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    .line 2
    .line 3
    iput p2, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    .line 4
    .line 5
    return-void
.end method

.method public initForYuvFrame(IIIII)Z
    .locals 6

    .line 1
    iput p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    .line 2
    .line 3
    iput p2, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    .line 4
    .line 5
    iput p5, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->colorspace:I

    .line 6
    .line 7
    int-to-long v0, p2

    .line 8
    const-wide/16 v2, 0x1

    .line 9
    .line 10
    add-long/2addr v0, v2

    .line 11
    const-wide/16 v2, 0x2

    .line 12
    .line 13
    div-long/2addr v0, v2

    .line 14
    long-to-int p1, v0

    .line 15
    invoke-static {p3, p2}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    .line 16
    .line 17
    .line 18
    move-result p5

    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz p5, :cond_6

    .line 21
    .line 22
    invoke-static {p4, p1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    .line 23
    .line 24
    .line 25
    move-result p5

    .line 26
    if-nez p5, :cond_0

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    mul-int/2addr p2, p3

    .line 30
    mul-int/2addr p1, p4

    .line 31
    mul-int/lit8 p5, p1, 0x2

    .line 32
    .line 33
    add-int/2addr p5, p2

    .line 34
    const/4 v1, 0x2

    .line 35
    invoke-static {p1, v1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_6

    .line 40
    .line 41
    if-ge p5, p2, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    iget-object v2, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-ge v2, p5, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object v2, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    invoke-virtual {v2, p5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    :goto_0
    invoke-static {p5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    move-result-object p5

    .line 70
    iput-object p5, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 71
    .line 72
    :goto_1
    iget-object p5, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    const/4 v2, 0x3

    .line 75
    if-nez p5, :cond_4

    .line 76
    .line 77
    new-array p5, v2, [Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    iput-object p5, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    :cond_4
    iget-object p5, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    iget-object v3, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 84
    .line 85
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    aput-object v4, v3, v0

    .line 90
    .line 91
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const/4 v5, 0x1

    .line 102
    aput-object v4, v3, v5

    .line 103
    .line 104
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 105
    .line 106
    .line 107
    add-int/2addr p2, p1

    .line 108
    invoke-virtual {p5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    aput-object p2, v3, v1

    .line 116
    .line 117
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    .line 121
    .line 122
    if-nez p1, :cond_5

    .line 123
    .line 124
    new-array p1, v2, [I

    .line 125
    .line 126
    iput-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    .line 127
    .line 128
    :cond_5
    iget-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    .line 129
    .line 130
    aput p3, p1, v0

    .line 131
    .line 132
    aput p4, p1, v5

    .line 133
    .line 134
    aput p4, p1, v1

    .line 135
    .line 136
    return v5

    .line 137
    :cond_6
    :goto_2
    return v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->owner:Landroidx/media3/decoder/h$a;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Landroidx/media3/decoder/h$a;->a(Landroidx/media3/decoder/h;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
