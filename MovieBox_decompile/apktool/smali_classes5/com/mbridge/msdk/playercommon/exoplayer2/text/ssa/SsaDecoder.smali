.class public final Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;
.super Lcom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;
.source "source.java"


# static fields
.field private static final DIALOGUE_LINE_PREFIX:Ljava/lang/String; = "Dialogue: "

.field private static final FORMAT_LINE_PREFIX:Ljava/lang/String; = "Format: "

.field private static final SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "SsaDecoder"


# instance fields
.field private formatEndIndex:I

.field private formatKeyCount:I

.field private formatStartIndex:I

.field private formatTextIndex:I

.field private final haveInitializationData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)(?::|\\.)(\\d+)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 2
    const-string v0, "SsaDecoder"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->haveInitializationData:Z

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v0

    .line 6
    const-string v2, "Format: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 7
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->parseFormatLine(Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->parseHeader(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    .line 9
    :cond_0
    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->haveInitializationData:Z

    :goto_0
    return-void
.end method

.method private parseDialogueLine(Ljava/lang/String;Ljava/util/List;Lcom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
            ">;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;",
            ")V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatKeyCount:I

    .line 2
    .line 3
    const-string v1, "SsaDecoder"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string p3, "Skipping dialogue line before complete format: "

    .line 13
    .line 14
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const/16 v0, 0xa

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatKeyCount:I

    .line 35
    .line 36
    const-string v3, ","

    .line 37
    .line 38
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    array-length v2, v0

    .line 43
    iget v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatKeyCount:I

    .line 44
    .line 45
    if-eq v2, v3, :cond_1

    .line 46
    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string p3, "Skipping dialogue line with fewer columns than format: "

    .line 53
    .line 54
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatStartIndex:I

    .line 69
    .line 70
    aget-object v2, v0, v2

    .line 71
    .line 72
    invoke-static {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->parseTimecodeUs(Ljava/lang/String;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    cmp-long v6, v2, v4

    .line 82
    .line 83
    const-string v7, "Skipping invalid timing: "

    .line 84
    .line 85
    if-nez v6, :cond_2

    .line 86
    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_2
    iget v6, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatEndIndex:I

    .line 107
    .line 108
    aget-object v6, v0, v6

    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-nez v8, :cond_3

    .line 119
    .line 120
    invoke-static {v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->parseTimecodeUs(Ljava/lang/String;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v8

    .line 124
    cmp-long v6, v8, v4

    .line 125
    .line 126
    if-nez v6, :cond_4

    .line 127
    .line 128
    new-instance p2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_3
    move-wide v8, v4

    .line 148
    :cond_4
    iget p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatTextIndex:I

    .line 149
    .line 150
    aget-object p1, v0, p1

    .line 151
    .line 152
    const-string v0, "\\{.*?\\}"

    .line 153
    .line 154
    const-string v1, ""

    .line 155
    .line 156
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    const-string v0, "\\\\N"

    .line 161
    .line 162
    const-string v1, "\n"

    .line 163
    .line 164
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    const-string v0, "\\\\n"

    .line 169
    .line 170
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/Cue;

    .line 175
    .line 176
    invoke-direct {v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3, v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;->add(J)V

    .line 183
    .line 184
    .line 185
    cmp-long p1, v8, v4

    .line 186
    .line 187
    if-eqz p1, :cond_5

    .line 188
    .line 189
    const/4 p1, 0x0

    .line 190
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3, v8, v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;->add(J)V

    .line 194
    .line 195
    .line 196
    :cond_5
    return-void
.end method

.method private parseEventBody(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/util/List;Lcom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
            ">;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;",
            ")V"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->haveInitializationData:Z

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const-string v1, "Format: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->parseFormatLine(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string v1, "Dialogue: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-direct {p0, v0, p2, p3}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->parseDialogueLine(Ljava/lang/String;Ljava/util/List;Lcom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method

.method private parseFormatLine(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v1, ","

    .line 9
    .line 10
    invoke-static {p1, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    array-length v1, p1

    .line 15
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatKeyCount:I

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatStartIndex:I

    .line 19
    .line 20
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatEndIndex:I

    .line 21
    .line 22
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatTextIndex:I

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    :goto_0
    iget v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatKeyCount:I

    .line 27
    .line 28
    if-ge v3, v4, :cond_3

    .line 29
    .line 30
    aget-object v4, p1, v3

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    sparse-switch v5, :sswitch_data_0

    .line 48
    .line 49
    .line 50
    :goto_1
    move v4, v1

    .line 51
    goto :goto_2

    .line 52
    :sswitch_0
    const-string v5, "start"

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_0

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    const/4 v4, 0x2

    .line 62
    goto :goto_2

    .line 63
    :sswitch_1
    const-string v5, "text"

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move v4, v0

    .line 73
    goto :goto_2

    .line 74
    :sswitch_2
    const-string v5, "end"

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    move v4, v2

    .line 84
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :pswitch_0
    iput v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatStartIndex:I

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :pswitch_1
    iput v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatTextIndex:I

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :pswitch_2
    iput v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatEndIndex:I

    .line 95
    .line 96
    :goto_3
    add-int/2addr v3, v0

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    iget p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatStartIndex:I

    .line 99
    .line 100
    if-eq p1, v1, :cond_4

    .line 101
    .line 102
    iget p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatEndIndex:I

    .line 103
    .line 104
    if-eq p1, v1, :cond_4

    .line 105
    .line 106
    iget p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatTextIndex:I

    .line 107
    .line 108
    if-ne p1, v1, :cond_5

    .line 109
    .line 110
    :cond_4
    iput v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->formatKeyCount:I

    .line 111
    .line 112
    :cond_5
    return-void

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x188db -> :sswitch_2
        0x36452d -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseHeader(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string v1, "[Events]"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public static parseTimecodeUs(Ljava/lang/String;)J
    .locals 6

    .line 1
    sget-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    return-wide v0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    const-wide v2, 0xd693a400L

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    mul-long/2addr v0, v2

    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    const-wide/32 v4, 0x3938700

    .line 44
    .line 45
    .line 46
    mul-long/2addr v2, v4

    .line 47
    add-long/2addr v0, v2

    .line 48
    const/4 v2, 0x3

    .line 49
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    const-wide/32 v4, 0xf4240

    .line 58
    .line 59
    .line 60
    mul-long/2addr v2, v4

    .line 61
    add-long/2addr v0, v2

    .line 62
    const/4 v2, 0x4

    .line 63
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    const-wide/16 v4, 0x2710

    .line 72
    .line 73
    mul-long/2addr v2, v4

    .line 74
    add-long/2addr v0, v2

    .line 75
    return-wide v0
.end method


# virtual methods
.method protected bridge synthetic decode([BIZ)Lcom/mbridge/msdk/playercommon/exoplayer2/text/Subtitle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->decode([BIZ)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaSubtitle;

    move-result-object p1

    return-object p1
.end method

.method protected decode([BIZ)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaSubtitle;
    .locals 2

    .line 2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;

    invoke-direct {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;-><init>()V

    .line 4
    new-instance v1, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {v1, p1, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 5
    iget-boolean p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->haveInitializationData:Z

    if-nez p1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->parseHeader(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    .line 7
    :cond_0
    invoke-direct {p0, v1, p3, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaDecoder;->parseEventBody(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/util/List;Lcom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;)V

    .line 8
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/mbridge/msdk/playercommon/exoplayer2/text/Cue;

    .line 9
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 10
    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/LongArray;->toArray()[J

    move-result-object p2

    .line 11
    new-instance p3, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaSubtitle;

    invoke-direct {p3, p1, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ssa/SsaSubtitle;-><init>([Lcom/mbridge/msdk/playercommon/exoplayer2/text/Cue;[J)V

    return-object p3
.end method
