.class public final Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoder;


# static fields
.field private static final TYPE_PRIVATE_COMMAND:I = 0xff

.field private static final TYPE_SPLICE_INSERT:I = 0x5

.field private static final TYPE_SPLICE_NULL:I = 0x0

.field private static final TYPE_SPLICE_SCHEDULE:I = 0x4

.field private static final TYPE_TIME_SIGNAL:I = 0x6


# instance fields
.field private final sectionData:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private final sectionHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

.field private timestampAdjuster:Lcom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 10
    .line 11
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public decode(Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoderException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lcom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    iget-wide v3, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    cmp-long v2, v3, v5

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    :cond_0
    new-instance v2, Lcom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    .line 18
    .line 19
    iget-wide v3, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 20
    .line 21
    invoke-direct {v2, v3, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lcom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    .line 25
    .line 26
    iget-wide v3, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 27
    .line 28
    iget-wide v5, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    .line 29
    .line 30
    sub-long/2addr v3, v5

    .line 31
    invoke-virtual {v2, v3, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object p1, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 45
    .line 46
    invoke-virtual {v3, v2, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 50
    .line 51
    invoke-virtual {v3, v2, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 55
    .line 56
    const/16 v2, 0x27

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    int-to-long v2, p1

    .line 68
    const/16 p1, 0x20

    .line 69
    .line 70
    shl-long/2addr v2, p1

    .line 71
    iget-object v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 72
    .line 73
    invoke-virtual {v4, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    int-to-long v4, p1

    .line 78
    or-long/2addr v2, v4

    .line 79
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 80
    .line 81
    const/16 v4, 0x14

    .line 82
    .line 83
    invoke-virtual {p1, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 87
    .line 88
    const/16 v4, 0xc

    .line 89
    .line 90
    invoke-virtual {p1, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iget-object v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;

    .line 95
    .line 96
    const/16 v5, 0x8

    .line 97
    .line 98
    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    iget-object v5, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 103
    .line 104
    const/16 v6, 0xe

    .line 105
    .line 106
    invoke-virtual {v5, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 107
    .line 108
    .line 109
    if-eqz v4, :cond_6

    .line 110
    .line 111
    const/16 v5, 0xff

    .line 112
    .line 113
    if-eq v4, v5, :cond_5

    .line 114
    .line 115
    const/4 p1, 0x4

    .line 116
    if-eq v4, p1, :cond_4

    .line 117
    .line 118
    const/4 p1, 0x5

    .line 119
    if-eq v4, p1, :cond_3

    .line 120
    .line 121
    const/4 p1, 0x6

    .line 122
    if-eq v4, p1, :cond_2

    .line 123
    .line 124
    const/4 p1, 0x0

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 127
    .line 128
    iget-object v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lcom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    .line 129
    .line 130
    invoke-static {p1, v2, v3, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/TimeSignalCommand;->parseFromSection(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;JLcom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/TimeSignalCommand;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    goto :goto_0

    .line 135
    :cond_3
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 136
    .line 137
    iget-object v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lcom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    .line 138
    .line 139
    invoke-static {p1, v2, v3, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInsertCommand;->parseFromSection(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;JLcom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInsertCommand;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    goto :goto_0

    .line 144
    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand;->parseFromSection(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    goto :goto_0

    .line 151
    :cond_5
    iget-object v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 152
    .line 153
    invoke-static {v4, p1, v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;->parseFromSection(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IJ)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    goto :goto_0

    .line 158
    :cond_6
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceNullCommand;

    .line 159
    .line 160
    invoke-direct {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceNullCommand;-><init>()V

    .line 161
    .line 162
    .line 163
    :goto_0
    if-nez p1, :cond_7

    .line 164
    .line 165
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    .line 166
    .line 167
    new-array v0, v0, [Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata$Entry;

    .line 168
    .line 169
    invoke-direct {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;-><init>([Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata$Entry;)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_7
    new-instance v2, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    .line 174
    .line 175
    new-array v1, v1, [Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata$Entry;

    .line 176
    .line 177
    aput-object p1, v1, v0

    .line 178
    .line 179
    invoke-direct {v2, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;-><init>([Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata$Entry;)V

    .line 180
    .line 181
    .line 182
    move-object p1, v2

    .line 183
    :goto_1
    return-object p1
.end method
