.class final Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;


# static fields
.field private static final TAG:Ljava/lang/String; = "VbriSeeker"


# instance fields
.field private final durationUs:J

.field private final positions:[J

.field private final timesUs:[J


# direct methods
.method private constructor <init>([J[JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;->durationUs:J

    .line 9
    .line 10
    return-void
.end method

.method public static create(JJLcom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;
    .locals 20

    .line 1
    move-wide/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p4

    .line 4
    .line 5
    move-object/from16 v3, p5

    .line 6
    .line 7
    const/16 v4, 0xa

    .line 8
    .line 9
    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p5 .. p5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x0

    .line 17
    if-gtz v4, :cond_0

    .line 18
    .line 19
    return-object v5

    .line 20
    :cond_0
    iget v6, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    .line 21
    .line 22
    int-to-long v7, v4

    .line 23
    const/16 v4, 0x7d00

    .line 24
    .line 25
    if-lt v6, v4, :cond_1

    .line 26
    .line 27
    const/16 v4, 0x480

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/16 v4, 0x240

    .line 31
    .line 32
    :goto_0
    int-to-long v9, v4

    .line 33
    const-wide/32 v11, 0xf4240

    .line 34
    .line 35
    .line 36
    mul-long/2addr v9, v11

    .line 37
    int-to-long v11, v6

    .line 38
    invoke-static/range {v7 .. v12}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    invoke-virtual/range {p5 .. p5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual/range {p5 .. p5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    invoke-virtual/range {p5 .. p5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    const/4 v10, 0x2

    .line 55
    invoke-virtual {v3, v10}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 56
    .line 57
    .line 58
    iget v2, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    .line 59
    .line 60
    int-to-long v11, v2

    .line 61
    add-long v11, p2, v11

    .line 62
    .line 63
    new-array v2, v4, [J

    .line 64
    .line 65
    new-array v13, v4, [J

    .line 66
    .line 67
    const/4 v14, 0x0

    .line 68
    move v5, v14

    .line 69
    move-wide/from16 v14, p2

    .line 70
    .line 71
    :goto_1
    if-ge v5, v4, :cond_6

    .line 72
    .line 73
    move-wide/from16 v16, v11

    .line 74
    .line 75
    int-to-long v10, v5

    .line 76
    mul-long/2addr v10, v6

    .line 77
    move-wide/from16 v18, v6

    .line 78
    .line 79
    int-to-long v6, v4

    .line 80
    div-long/2addr v10, v6

    .line 81
    aput-wide v10, v2, v5

    .line 82
    .line 83
    move-wide/from16 v6, v16

    .line 84
    .line 85
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 86
    .line 87
    .line 88
    move-result-wide v10

    .line 89
    aput-wide v10, v13, v5

    .line 90
    .line 91
    const/4 v10, 0x1

    .line 92
    if-eq v9, v10, :cond_5

    .line 93
    .line 94
    const/4 v10, 0x2

    .line 95
    if-eq v9, v10, :cond_4

    .line 96
    .line 97
    const/4 v11, 0x3

    .line 98
    if-eq v9, v11, :cond_3

    .line 99
    .line 100
    const/4 v11, 0x4

    .line 101
    if-eq v9, v11, :cond_2

    .line 102
    .line 103
    const/4 v11, 0x0

    .line 104
    return-object v11

    .line 105
    :cond_2
    const/4 v11, 0x0

    .line 106
    invoke-virtual/range {p5 .. p5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    const/4 v11, 0x0

    .line 112
    invoke-virtual/range {p5 .. p5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    const/4 v11, 0x0

    .line 118
    invoke-virtual/range {p5 .. p5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    goto :goto_2

    .line 123
    :cond_5
    const/4 v10, 0x2

    .line 124
    const/4 v11, 0x0

    .line 125
    invoke-virtual/range {p5 .. p5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    :goto_2
    mul-int/2addr v12, v8

    .line 130
    int-to-long v10, v12

    .line 131
    add-long/2addr v14, v10

    .line 132
    add-int/lit8 v5, v5, 0x1

    .line 133
    .line 134
    move-wide v11, v6

    .line 135
    move-wide/from16 v6, v18

    .line 136
    .line 137
    const/4 v10, 0x2

    .line 138
    goto :goto_1

    .line 139
    :cond_6
    move-wide/from16 v18, v6

    .line 140
    .line 141
    const-wide/16 v3, -0x1

    .line 142
    .line 143
    cmp-long v3, v0, v3

    .line 144
    .line 145
    if-eqz v3, :cond_7

    .line 146
    .line 147
    cmp-long v3, v0, v14

    .line 148
    .line 149
    if-eqz v3, :cond_7

    .line 150
    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v4, "VBRI data size mismatch: "

    .line 157
    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v0, ", "

    .line 165
    .line 166
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    const-string v1, "VbriSeeker"

    .line 177
    .line 178
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :cond_7
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;

    .line 182
    .line 183
    move-wide/from16 v3, v18

    .line 184
    .line 185
    invoke-direct {v0, v2, v13, v3, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;-><init>([J[JJ)V

    .line 186
    .line 187
    .line 188
    return-object v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;->durationUs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p1, p2, v1, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-instance v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 11
    .line 12
    aget-wide v4, v3, v0

    .line 13
    .line 14
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    .line 15
    .line 16
    aget-wide v6, v3, v0

    .line 17
    .line 18
    invoke-direct {v2, v4, v5, v6, v7}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 19
    .line 20
    .line 21
    iget-wide v3, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;->timeUs:J

    .line 22
    .line 23
    cmp-long p1, v3, p1

    .line 24
    .line 25
    if-gez p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 28
    .line 29
    array-length p1, p1

    .line 30
    sub-int/2addr p1, v1

    .line 31
    if-ne v0, p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 37
    .line 38
    add-int/2addr v0, v1

    .line 39
    aget-wide v3, p2, v0

    .line 40
    .line 41
    iget-object p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    .line 42
    .line 43
    aget-wide v0, p2, v0

    .line 44
    .line 45
    invoke-direct {p1, v3, v4, v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 46
    .line 47
    .line 48
    new-instance p2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;

    .line 49
    .line 50
    invoke-direct {p2, v2, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;)V

    .line 51
    .line 52
    .line 53
    return-object p2

    .line 54
    :cond_1
    :goto_0
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;

    .line 55
    .line 56
    invoke-direct {p1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekPoint;)V

    .line 57
    .line 58
    .line 59
    return-object p1
.end method

.method public getTimeUs(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v1, p1, p2, v2, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget-wide p1, v0, p1

    .line 11
    .line 12
    return-wide p1
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
