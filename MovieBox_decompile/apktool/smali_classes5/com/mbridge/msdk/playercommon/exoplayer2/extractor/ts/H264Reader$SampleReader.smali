.class final Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x80

.field private static final NAL_UNIT_TYPE_AUD:I = 0x9

.field private static final NAL_UNIT_TYPE_IDR:I = 0x5

.field private static final NAL_UNIT_TYPE_NON_IDR:I = 0x1

.field private static final NAL_UNIT_TYPE_PARTITION_A:I = 0x2


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

.field private buffer:[B

.field private bufferLength:I

.field private final detectAccessUnits:Z

.field private isFilling:Z

.field private nalUnitStartPosition:J

.field private nalUnitTimeUs:J

.field private nalUnitType:I

.field private final output:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

.field private final pps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$PpsData;",
            ">;"
        }
    .end annotation
.end field

.field private previousSliceHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private sliceHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private final sps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->output:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    .line 9
    .line 10
    new-instance p1, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    .line 16
    .line 17
    new-instance p1, Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    .line 23
    .line 24
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-direct {p1, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$1;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 31
    .line 32
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 33
    .line 34
    invoke-direct {p1, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$1;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 38
    .line 39
    const/16 p1, 0x80

    .line 40
    .line 41
    new-array p1, p1, [B

    .line 42
    .line 43
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 44
    .line 45
    new-instance p2, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 46
    .line 47
    const/4 p3, 0x0

    .line 48
    invoke-direct {p2, p1, p3, p3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->reset()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private outputSample(I)V
    .locals 7

    .line 1
    iget-boolean v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    .line 4
    .line 5
    iget-wide v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    .line 6
    .line 7
    sub-long/2addr v0, v4

    .line 8
    long-to-int v4, v0

    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->output:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 10
    .line 11
    iget-wide v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    move v5, p1

    .line 15
    invoke-interface/range {v0 .. v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sub-int v2, p3, v1

    .line 11
    .line 12
    iget-object v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 13
    .line 14
    array-length v4, v3

    .line 15
    iget v5, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 16
    .line 17
    add-int/2addr v5, v2

    .line 18
    const/4 v6, 0x2

    .line 19
    if-ge v4, v5, :cond_1

    .line 20
    .line 21
    mul-int/2addr v5, v6

    .line 22
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iput-object v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 27
    .line 28
    :cond_1
    iget-object v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 29
    .line 30
    iget v4, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 31
    .line 32
    move-object/from16 v5, p1

    .line 33
    .line 34
    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    iget v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 38
    .line 39
    add-int/2addr v1, v2

    .line 40
    iput v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 41
    .line 42
    iget-object v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 43
    .line 44
    iget-object v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-virtual {v2, v3, v4, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->reset([BII)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 51
    .line 52
    const/16 v2, 0x8

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 67
    .line 68
    invoke-virtual {v1, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 73
    .line 74
    const/4 v2, 0x5

    .line 75
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_3

    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_4

    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    iget-boolean v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    .line 108
    .line 109
    if-nez v1, :cond_5

    .line 110
    .line 111
    iput-boolean v4, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 112
    .line 113
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 114
    .line 115
    invoke-virtual {v1, v10}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setSliceType(I)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_5
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_6

    .line 126
    .line 127
    return-void

    .line 128
    :cond_6
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    .line 135
    .line 136
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-gez v1, :cond_7

    .line 141
    .line 142
    iput-boolean v4, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 143
    .line 144
    return-void

    .line 145
    :cond_7
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    .line 146
    .line 147
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$PpsData;

    .line 152
    .line 153
    iget-object v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    .line 154
    .line 155
    iget v5, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$PpsData;->seqParameterSetId:I

    .line 156
    .line 157
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    move-object v8, v3

    .line 162
    check-cast v8, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;

    .line 163
    .line 164
    iget-boolean v3, v8, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    .line 165
    .line 166
    if-eqz v3, :cond_9

    .line 167
    .line 168
    iget-object v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 169
    .line 170
    invoke-virtual {v3, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-nez v3, :cond_8

    .line 175
    .line 176
    return-void

    .line 177
    :cond_8
    iget-object v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 178
    .line 179
    invoke-virtual {v3, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 180
    .line 181
    .line 182
    :cond_9
    iget-object v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 183
    .line 184
    iget v5, v8, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    .line 185
    .line 186
    invoke-virtual {v3, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-nez v3, :cond_a

    .line 191
    .line 192
    return-void

    .line 193
    :cond_a
    iget-object v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 194
    .line 195
    iget v5, v8, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    .line 196
    .line 197
    invoke-virtual {v3, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    iget-boolean v3, v8, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    .line 202
    .line 203
    const/4 v5, 0x1

    .line 204
    if-nez v3, :cond_e

    .line 205
    .line 206
    iget-object v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 207
    .line 208
    invoke-virtual {v3, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-nez v3, :cond_b

    .line 213
    .line 214
    return-void

    .line 215
    :cond_b
    iget-object v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 216
    .line 217
    invoke-virtual {v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-eqz v3, :cond_d

    .line 222
    .line 223
    iget-object v6, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 224
    .line 225
    invoke-virtual {v6, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    if-nez v6, :cond_c

    .line 230
    .line 231
    return-void

    .line 232
    :cond_c
    iget-object v6, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 233
    .line 234
    invoke-virtual {v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    move v13, v3

    .line 239
    move v14, v5

    .line 240
    move v15, v6

    .line 241
    goto :goto_1

    .line 242
    :cond_d
    move v13, v3

    .line 243
    move v14, v4

    .line 244
    :goto_0
    move v15, v14

    .line 245
    goto :goto_1

    .line 246
    :cond_e
    move v13, v4

    .line 247
    move v14, v13

    .line 248
    goto :goto_0

    .line 249
    :goto_1
    iget v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    .line 250
    .line 251
    if-ne v3, v2, :cond_f

    .line 252
    .line 253
    move/from16 v16, v5

    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_f
    move/from16 v16, v4

    .line 257
    .line 258
    :goto_2
    if-eqz v16, :cond_11

    .line 259
    .line 260
    iget-object v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 261
    .line 262
    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-nez v2, :cond_10

    .line 267
    .line 268
    return-void

    .line 269
    :cond_10
    iget-object v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 270
    .line 271
    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    move/from16 v17, v2

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_11
    move/from16 v17, v4

    .line 279
    .line 280
    :goto_3
    iget v2, v8, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    .line 281
    .line 282
    if-nez v2, :cond_15

    .line 283
    .line 284
    iget-object v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 285
    .line 286
    iget v3, v8, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    .line 287
    .line 288
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-nez v2, :cond_12

    .line 293
    .line 294
    return-void

    .line 295
    :cond_12
    iget-object v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 296
    .line 297
    iget v3, v8, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    .line 298
    .line 299
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    iget-boolean v1, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    .line 304
    .line 305
    if-eqz v1, :cond_14

    .line 306
    .line 307
    if-nez v13, :cond_14

    .line 308
    .line 309
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 310
    .line 311
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-nez v1, :cond_13

    .line 316
    .line 317
    return-void

    .line 318
    :cond_13
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 319
    .line 320
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    move/from16 v19, v1

    .line 325
    .line 326
    move/from16 v18, v2

    .line 327
    .line 328
    move/from16 v20, v4

    .line 329
    .line 330
    :goto_4
    move/from16 v21, v20

    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_14
    move/from16 v18, v2

    .line 334
    .line 335
    move/from16 v19, v4

    .line 336
    .line 337
    :goto_5
    move/from16 v20, v19

    .line 338
    .line 339
    goto :goto_4

    .line 340
    :cond_15
    if-ne v2, v5, :cond_19

    .line 341
    .line 342
    iget-boolean v2, v8, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    .line 343
    .line 344
    if-nez v2, :cond_19

    .line 345
    .line 346
    iget-object v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 347
    .line 348
    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    if-nez v2, :cond_16

    .line 353
    .line 354
    return-void

    .line 355
    :cond_16
    iget-object v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 356
    .line 357
    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    iget-boolean v1, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    .line 362
    .line 363
    if-eqz v1, :cond_18

    .line 364
    .line 365
    if-nez v13, :cond_18

    .line 366
    .line 367
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 368
    .line 369
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-nez v1, :cond_17

    .line 374
    .line 375
    return-void

    .line 376
    :cond_17
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;

    .line 377
    .line 378
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    move/from16 v21, v1

    .line 383
    .line 384
    move/from16 v20, v2

    .line 385
    .line 386
    move/from16 v18, v4

    .line 387
    .line 388
    move/from16 v19, v18

    .line 389
    .line 390
    goto :goto_6

    .line 391
    :cond_18
    move/from16 v20, v2

    .line 392
    .line 393
    move/from16 v18, v4

    .line 394
    .line 395
    move/from16 v19, v18

    .line 396
    .line 397
    move/from16 v21, v19

    .line 398
    .line 399
    goto :goto_6

    .line 400
    :cond_19
    move/from16 v18, v4

    .line 401
    .line 402
    move/from16 v19, v18

    .line 403
    .line 404
    goto :goto_5

    .line 405
    :goto_6
    iget-object v7, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 406
    .line 407
    invoke-virtual/range {v7 .. v21}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setAll(Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;IIIIZZZZIIIII)V

    .line 408
    .line 409
    .line 410
    iput-boolean v4, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 411
    .line 412
    return-void
.end method

.method public endNalUnit(JI)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->access$100(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    .line 28
    .line 29
    sub-long/2addr p1, v0

    .line 30
    long-to-int p1, p1

    .line 31
    add-int/2addr p3, p1

    .line 32
    invoke-direct {p0, p3}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->outputSample(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-wide p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    .line 36
    .line 37
    iput-wide p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    .line 38
    .line 39
    iget-wide p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    .line 40
    .line 41
    iput-wide p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    .line 42
    .line 43
    iput-boolean v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 44
    .line 45
    iput-boolean v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 46
    .line 47
    :cond_2
    iget-boolean p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 48
    .line 49
    iget p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    .line 50
    .line 51
    const/4 p3, 0x5

    .line 52
    if-eq p2, p3, :cond_3

    .line 53
    .line 54
    iget-boolean p3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    .line 55
    .line 56
    if-eqz p3, :cond_4

    .line 57
    .line 58
    if-ne p2, v3, :cond_4

    .line 59
    .line 60
    iget-object p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isISlice()Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_4

    .line 67
    .line 68
    :cond_3
    move v2, v3

    .line 69
    :cond_4
    or-int/2addr p1, v2

    .line 70
    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 71
    .line 72
    return-void
.end method

.method public needsSpsPps()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    .line 2
    .line 3
    return v0
.end method

.method public putPps(Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$PpsData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget v1, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$PpsData;->picParameterSetId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public putSps(Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget v1, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public startNalUnit(JIJ)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    .line 2
    .line 3
    iput-wide p4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    .line 4
    .line 5
    iput-wide p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    if-eq p3, p2, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-boolean p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    const/4 p1, 0x5

    .line 19
    if-eq p3, p1, :cond_1

    .line 20
    .line 21
    if-eq p3, p2, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    if-ne p3, p1, :cond_2

    .line 25
    .line 26
    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 27
    .line 28
    iget-object p3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 39
    .line 40
    iput-boolean p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 41
    .line 42
    :cond_2
    return-void
.end method
