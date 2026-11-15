.class public Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
.super Landroidx/media3/decoder/DecoderException;
.source "source.java"


# instance fields
.field public final codecInfo:Landroidx/media3/exoplayer/mediacodec/w;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final diagnosticInfo:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/w;)V
    .locals 3
    .param p2    # Landroidx/media3/exoplayer/mediacodec/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Decoder failed: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    move-object v2, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p2, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p0, v0, p1}, Landroidx/media3/decoder/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->codecInfo:Landroidx/media3/exoplayer/mediacodec/w;

    .line 29
    .line 30
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    move-object p2, p1

    .line 35
    check-cast p2, Landroid/media/MediaCodec$CodecException;

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_1
    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->diagnosticInfo:Ljava/lang/String;

    .line 42
    .line 43
    sget p2, Landroidx/media3/common/util/a1;->a:I

    .line 44
    .line 45
    const/16 v0, 0x17

    .line 46
    .line 47
    if-lt p2, v0, :cond_2

    .line 48
    .line 49
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->getErrorCodeV23(Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-static {v1}, Landroidx/media3/common/util/a1;->c0(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    :goto_1
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->errorCode:I

    .line 59
    .line 60
    return-void
.end method

.method private static getErrorCodeV23(Ljava/lang/Throwable;)I
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/media/MediaCodec$CodecException;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method
