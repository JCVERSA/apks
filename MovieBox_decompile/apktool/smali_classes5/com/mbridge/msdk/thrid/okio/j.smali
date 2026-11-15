.class public final Lcom/mbridge/msdk/thrid/okio/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/thrid/okio/s;


# instance fields
.field private a:I

.field private final b:Lcom/mbridge/msdk/thrid/okio/e;

.field private final c:Ljava/util/zip/Inflater;

.field private final d:Lcom/mbridge/msdk/thrid/okio/k;

.field private final e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/thrid/okio/s;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/mbridge/msdk/thrid/okio/j;->a:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/zip/CRC32;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okio/j;->e:Ljava/util/zip/CRC32;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/util/zip/Inflater;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okio/j;->c:Ljava/util/zip/Inflater;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okio/l;->a(Lcom/mbridge/msdk/thrid/okio/s;)Lcom/mbridge/msdk/thrid/okio/e;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 29
    .line 30
    new-instance v1, Lcom/mbridge/msdk/thrid/okio/k;

    .line 31
    .line 32
    invoke-direct {v1, p1, v0}, Lcom/mbridge/msdk/thrid/okio/k;-><init>(Lcom/mbridge/msdk/thrid/okio/e;Ljava/util/zip/Inflater;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mbridge/msdk/thrid/okio/j;->d:Lcom/mbridge/msdk/thrid/okio/k;

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string v0, "source == null"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method private a(Lcom/mbridge/msdk/thrid/okio/c;JJ)V
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okio/c;->a:Lcom/mbridge/msdk/thrid/okio/o;

    .line 2
    :goto_0
    iget v0, p1, Lcom/mbridge/msdk/thrid/okio/o;->c:I

    iget v1, p1, Lcom/mbridge/msdk/thrid/okio/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    sub-long/2addr p2, v0

    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okio/o;->f:Lcom/mbridge/msdk/thrid/okio/o;

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    .line 3
    iget v2, p1, Lcom/mbridge/msdk/thrid/okio/o;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int p2, v2

    .line 4
    iget p3, p1, Lcom/mbridge/msdk/thrid/okio/o;->c:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    .line 5
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okio/j;->e:Ljava/util/zip/CRC32;

    iget-object v3, p1, Lcom/mbridge/msdk/thrid/okio/o;->a:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    .line 6
    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okio/o;->f:Lcom/mbridge/msdk/thrid/okio/o;

    move-wide p2, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p3, p2, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p3, v1, p1

    const/4 p1, 0x2

    aput-object p2, v1, p1

    .line 9
    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 4
    .line 5
    const-wide/16 v1, 0xa

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/thrid/okio/e;->e(J)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/e;->a()Lcom/mbridge/msdk/thrid/okio/c;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-wide/16 v1, 0x3

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/thrid/okio/c;->f(J)B

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    shr-int/lit8 v0, v7, 0x1

    .line 23
    .line 24
    const/4 v8, 0x1

    .line 25
    and-int/2addr v0, v8

    .line 26
    const/4 v9, 0x0

    .line 27
    if-ne v0, v8, :cond_0

    .line 28
    .line 29
    move v10, v8

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v10, v9

    .line 32
    :goto_0
    if-eqz v10, :cond_1

    .line 33
    .line 34
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/e;->a()Lcom/mbridge/msdk/thrid/okio/c;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    const-wide/16 v4, 0xa

    .line 43
    .line 44
    move-object/from16 v0, p0

    .line 45
    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/thrid/okio/j;->a(Lcom/mbridge/msdk/thrid/okio/c;JJ)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 50
    .line 51
    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/e;->readShort()S

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const-string v1, "ID1ID2"

    .line 56
    .line 57
    const/16 v2, 0x1f8b

    .line 58
    .line 59
    invoke-direct {v6, v1, v2, v0}, Lcom/mbridge/msdk/thrid/okio/j;->a(Ljava/lang/String;II)V

    .line 60
    .line 61
    .line 62
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 63
    .line 64
    const-wide/16 v1, 0x8

    .line 65
    .line 66
    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/thrid/okio/e;->skip(J)V

    .line 67
    .line 68
    .line 69
    shr-int/lit8 v0, v7, 0x2

    .line 70
    .line 71
    and-int/2addr v0, v8

    .line 72
    if-ne v0, v8, :cond_4

    .line 73
    .line 74
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 75
    .line 76
    const-wide/16 v1, 0x2

    .line 77
    .line 78
    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/thrid/okio/e;->e(J)V

    .line 79
    .line 80
    .line 81
    if-eqz v10, :cond_2

    .line 82
    .line 83
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 84
    .line 85
    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/e;->a()Lcom/mbridge/msdk/thrid/okio/c;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-wide/16 v2, 0x0

    .line 90
    .line 91
    const-wide/16 v4, 0x2

    .line 92
    .line 93
    move-object/from16 v0, p0

    .line 94
    .line 95
    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/thrid/okio/j;->a(Lcom/mbridge/msdk/thrid/okio/c;JJ)V

    .line 96
    .line 97
    .line 98
    :cond_2
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 99
    .line 100
    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/e;->a()Lcom/mbridge/msdk/thrid/okio/c;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->g()S

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iget-object v1, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 109
    .line 110
    int-to-long v11, v0

    .line 111
    invoke-interface {v1, v11, v12}, Lcom/mbridge/msdk/thrid/okio/e;->e(J)V

    .line 112
    .line 113
    .line 114
    if-eqz v10, :cond_3

    .line 115
    .line 116
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 117
    .line 118
    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/e;->a()Lcom/mbridge/msdk/thrid/okio/c;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    const-wide/16 v2, 0x0

    .line 123
    .line 124
    move-object/from16 v0, p0

    .line 125
    .line 126
    move-wide v4, v11

    .line 127
    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/thrid/okio/j;->a(Lcom/mbridge/msdk/thrid/okio/c;JJ)V

    .line 128
    .line 129
    .line 130
    :cond_3
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 131
    .line 132
    invoke-interface {v0, v11, v12}, Lcom/mbridge/msdk/thrid/okio/e;->skip(J)V

    .line 133
    .line 134
    .line 135
    :cond_4
    shr-int/lit8 v0, v7, 0x3

    .line 136
    .line 137
    and-int/2addr v0, v8

    .line 138
    const-wide/16 v11, -0x1

    .line 139
    .line 140
    const-wide/16 v13, 0x1

    .line 141
    .line 142
    if-ne v0, v8, :cond_7

    .line 143
    .line 144
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 145
    .line 146
    invoke-interface {v0, v9}, Lcom/mbridge/msdk/thrid/okio/e;->a(B)J

    .line 147
    .line 148
    .line 149
    move-result-wide v15

    .line 150
    cmp-long v0, v15, v11

    .line 151
    .line 152
    if-eqz v0, :cond_6

    .line 153
    .line 154
    if-eqz v10, :cond_5

    .line 155
    .line 156
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 157
    .line 158
    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/e;->a()Lcom/mbridge/msdk/thrid/okio/c;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    add-long v4, v15, v13

    .line 163
    .line 164
    const-wide/16 v2, 0x0

    .line 165
    .line 166
    move-object/from16 v0, p0

    .line 167
    .line 168
    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/thrid/okio/j;->a(Lcom/mbridge/msdk/thrid/okio/c;JJ)V

    .line 169
    .line 170
    .line 171
    :cond_5
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 172
    .line 173
    add-long v1, v15, v13

    .line 174
    .line 175
    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/thrid/okio/e;->skip(J)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_6
    new-instance v0, Ljava/io/EOFException;

    .line 180
    .line 181
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 182
    .line 183
    .line 184
    throw v0

    .line 185
    :cond_7
    :goto_1
    shr-int/lit8 v0, v7, 0x4

    .line 186
    .line 187
    and-int/2addr v0, v8

    .line 188
    if-ne v0, v8, :cond_a

    .line 189
    .line 190
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 191
    .line 192
    invoke-interface {v0, v9}, Lcom/mbridge/msdk/thrid/okio/e;->a(B)J

    .line 193
    .line 194
    .line 195
    move-result-wide v7

    .line 196
    cmp-long v0, v7, v11

    .line 197
    .line 198
    if-eqz v0, :cond_9

    .line 199
    .line 200
    if-eqz v10, :cond_8

    .line 201
    .line 202
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 203
    .line 204
    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/e;->a()Lcom/mbridge/msdk/thrid/okio/c;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    add-long v4, v7, v13

    .line 209
    .line 210
    const-wide/16 v2, 0x0

    .line 211
    .line 212
    move-object/from16 v0, p0

    .line 213
    .line 214
    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/thrid/okio/j;->a(Lcom/mbridge/msdk/thrid/okio/c;JJ)V

    .line 215
    .line 216
    .line 217
    :cond_8
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 218
    .line 219
    add-long/2addr v7, v13

    .line 220
    invoke-interface {v0, v7, v8}, Lcom/mbridge/msdk/thrid/okio/e;->skip(J)V

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_9
    new-instance v0, Ljava/io/EOFException;

    .line 225
    .line 226
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 227
    .line 228
    .line 229
    throw v0

    .line 230
    :cond_a
    :goto_2
    if-eqz v10, :cond_b

    .line 231
    .line 232
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 233
    .line 234
    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/e;->g()S

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    iget-object v1, v6, Lcom/mbridge/msdk/thrid/okio/j;->e:Ljava/util/zip/CRC32;

    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 241
    .line 242
    .line 243
    move-result-wide v1

    .line 244
    long-to-int v1, v1

    .line 245
    int-to-short v1, v1

    .line 246
    const-string v2, "FHCRC"

    .line 247
    .line 248
    invoke-direct {v6, v2, v0, v1}, Lcom/mbridge/msdk/thrid/okio/j;->a(Ljava/lang/String;II)V

    .line 249
    .line 250
    .line 251
    iget-object v0, v6, Lcom/mbridge/msdk/thrid/okio/j;->e:Ljava/util/zip/CRC32;

    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 254
    .line 255
    .line 256
    :cond_b
    return-void
.end method

.method private h()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/e;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/j;->e:Ljava/util/zip/CRC32;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    long-to-int v1, v1

    .line 14
    const-string v2, "CRC"

    .line 15
    .line 16
    invoke-direct {p0, v2, v0, v1}, Lcom/mbridge/msdk/thrid/okio/j;->a(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/e;->e()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/j;->c:Ljava/util/zip/Inflater;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    long-to-int v1, v1

    .line 32
    const-string v2, "ISIZE"

    .line 33
    .line 34
    invoke-direct {p0, v2, v0, v1}, Lcom/mbridge/msdk/thrid/okio/j;->a(Ljava/lang/String;II)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public b(Lcom/mbridge/msdk/thrid/okio/c;J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_6

    if-nez v2, :cond_0

    return-wide v0

    .line 1
    :cond_0
    iget v0, p0, Lcom/mbridge/msdk/thrid/okio/j;->a:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okio/j;->d()V

    .line 3
    iput v1, p0, Lcom/mbridge/msdk/thrid/okio/j;->a:I

    .line 4
    :cond_1
    iget v0, p0, Lcom/mbridge/msdk/thrid/okio/j;->a:I

    const/4 v2, 0x2

    const-wide/16 v3, -0x1

    if-ne v0, v1, :cond_3

    .line 5
    iget-wide v7, p1, Lcom/mbridge/msdk/thrid/okio/c;->b:J

    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/j;->d:Lcom/mbridge/msdk/thrid/okio/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okio/k;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    move-result-wide p2

    cmp-long v0, p2, v3

    if-eqz v0, :cond_2

    move-object v5, p0

    move-object v6, p1

    move-wide v9, p2

    .line 7
    invoke-direct/range {v5 .. v10}, Lcom/mbridge/msdk/thrid/okio/j;->a(Lcom/mbridge/msdk/thrid/okio/c;JJ)V

    return-wide p2

    .line 8
    :cond_2
    iput v2, p0, Lcom/mbridge/msdk/thrid/okio/j;->a:I

    .line 9
    :cond_3
    iget p1, p0, Lcom/mbridge/msdk/thrid/okio/j;->a:I

    if-ne p1, v2, :cond_5

    .line 10
    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okio/j;->h()V

    const/4 p1, 0x3

    .line 11
    iput p1, p0, Lcom/mbridge/msdk/thrid/okio/j;->a:I

    .line 12
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {p1}, Lcom/mbridge/msdk/thrid/okio/e;->f()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "gzip finished without exhausting source"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    return-wide v3

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/mbridge/msdk/thrid/okio/t;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/j;->b:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/s;->b()Lcom/mbridge/msdk/thrid/okio/t;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/j;->d:Lcom/mbridge/msdk/thrid/okio/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/k;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
