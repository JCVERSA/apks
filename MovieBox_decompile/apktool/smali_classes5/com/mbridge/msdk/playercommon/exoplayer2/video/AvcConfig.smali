.class public final Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthAspectRatio:F

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIF)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 5
    .line 6
    iput p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->width:I

    .line 9
    .line 10
    iput p4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->height:I

    .line 11
    .line 12
    iput p5, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    .line 13
    .line 14
    return-void
.end method

.method private static buildNalUnitForChild(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 13
    .line 14
    invoke-static {p0, v1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static parse(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    and-int/2addr v0, v1

    .line 11
    add-int/lit8 v4, v0, 0x1

    .line 12
    .line 13
    if-eq v4, v1, :cond_3

    .line 14
    .line 15
    new-instance v3, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    and-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    move v2, v1

    .line 28
    :goto_0
    if-ge v2, v0, :cond_0

    .line 29
    .line 30
    invoke-static {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->buildNalUnitForChild(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)[B

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_3

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    move v5, v1

    .line 47
    :goto_1
    if-ge v5, v2, :cond_1

    .line 48
    .line 49
    invoke-static {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->buildNalUnitForChild(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)[B

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    if-lez v0, :cond_2

    .line 60
    .line 61
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, [B

    .line 66
    .line 67
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, [B

    .line 72
    .line 73
    array-length p0, p0

    .line 74
    invoke-static {v0, v4, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->width:I

    .line 79
    .line 80
    iget v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->height:I

    .line 81
    .line 82
    iget p0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    .line 83
    .line 84
    move v7, p0

    .line 85
    move v5, v0

    .line 86
    move v6, v1

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    const/4 p0, -0x1

    .line 89
    const/high16 v0, 0x3f800000    # 1.0f

    .line 90
    .line 91
    move v5, p0

    .line 92
    move v6, v5

    .line 93
    move v7, v0

    .line 94
    :goto_2
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;

    .line 95
    .line 96
    move-object v2, p0

    .line 97
    invoke-direct/range {v2 .. v7}, Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;-><init>(Ljava/util/List;IIIF)V

    .line 98
    .line 99
    .line 100
    return-object p0

    .line 101
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 104
    .line 105
    .line 106
    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_3
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    .line 108
    .line 109
    const-string v1, "Error parsing AVC config"

    .line 110
    .line 111
    invoke-direct {v0, v1, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    throw v0
.end method
