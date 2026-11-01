.class public final Lcom/snaptube/extractor/pluginlib/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/snaptube/extractor/pluginlib/utils/a;

.field private static final b:[B

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/snaptube/extractor/pluginlib/utils/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/snaptube/extractor/pluginlib/utils/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/snaptube/extractor/pluginlib/utils/a;->a:Lcom/snaptube/extractor/pluginlib/utils/a;

    .line 7
    .line 8
    const-string v0, "APK Sig Block 42"

    .line 9
    .line 10
    sget-object v1, Lz0/d;->b:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "getBytes(...)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lv0/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/snaptube/extractor/pluginlib/utils/a;->b:[B

    .line 22
    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/io/RandomAccessFile;J)Ljava/lang/Long;
    .locals 12

    .line 1
    const/16 v1, 0x16

    .line 2
    .line 3
    int-to-long v2, v1

    .line 4
    sub-long v4, p2, v2

    .line 5
    .line 6
    const v6, 0xffff

    .line 7
    .line 8
    .line 9
    int-to-long v6, v6

    .line 10
    sub-long/2addr v4, v6

    .line 11
    const-wide/16 v6, 0x0

    .line 12
    .line 13
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    sub-long v6, p2, v4

    .line 18
    .line 19
    const v8, 0x10016

    .line 20
    .line 21
    .line 22
    int-to-long v8, v8

    .line 23
    invoke-static {v6, v7, v8, v9}, Lw0/d;->c(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    long-to-int v7, v6

    .line 28
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 29
    .line 30
    .line 31
    new-array v6, v7, [B

    .line 32
    .line 33
    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 34
    .line 35
    .line 36
    sub-int/2addr v7, v1

    .line 37
    :goto_0
    const/4 v0, -0x1

    .line 38
    if-ge v0, v7, :cond_1

    .line 39
    .line 40
    aget-byte v0, v6, v7

    .line 41
    .line 42
    const/16 v1, 0x50

    .line 43
    .line 44
    if-ne v0, v1, :cond_0

    .line 45
    .line 46
    add-int/lit8 v0, v7, 0x1

    .line 47
    .line 48
    aget-byte v0, v6, v0

    .line 49
    .line 50
    const/16 v1, 0x4b

    .line 51
    .line 52
    if-ne v0, v1, :cond_0

    .line 53
    .line 54
    add-int/lit8 v0, v7, 0x2

    .line 55
    .line 56
    aget-byte v0, v6, v0

    .line 57
    .line 58
    const/4 v1, 0x5

    .line 59
    if-ne v0, v1, :cond_0

    .line 60
    .line 61
    add-int/lit8 v0, v7, 0x3

    .line 62
    .line 63
    aget-byte v0, v6, v0

    .line 64
    .line 65
    const/4 v1, 0x6

    .line 66
    if-ne v0, v1, :cond_0

    .line 67
    .line 68
    add-int/lit8 v0, v7, 0x14

    .line 69
    .line 70
    aget-byte v0, v6, v0

    .line 71
    .line 72
    and-int/lit16 v0, v0, 0xff

    .line 73
    .line 74
    add-int/lit8 v1, v7, 0x15

    .line 75
    .line 76
    aget-byte v1, v6, v1

    .line 77
    .line 78
    and-int/lit16 v1, v1, 0xff

    .line 79
    .line 80
    shl-int/lit8 v1, v1, 0x8

    .line 81
    .line 82
    or-int/2addr v0, v1

    .line 83
    int-to-long v8, v7

    .line 84
    add-long/2addr v8, v4

    .line 85
    add-long v10, v8, v2

    .line 86
    .line 87
    int-to-long v0, v0

    .line 88
    add-long/2addr v10, v0

    .line 89
    cmp-long v0, v10, p2

    .line 90
    .line 91
    if-nez v0, :cond_0

    .line 92
    .line 93
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0

    .line 98
    :cond_0
    add-int/lit8 v7, v7, -0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    .line 102
    return-object v0
.end method

.method private final b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lv0/m;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/utils/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Ll0/m;->d(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/utils/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method private final c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 11

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    const-string v1, "r"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    sget-object p1, Lcom/snaptube/extractor/pluginlib/utils/a;->a:Lcom/snaptube/extractor/pluginlib/utils/a;

    .line 13
    .line 14
    invoke-direct {p1, v0, v1, v2}, Lcom/snaptube/extractor/pluginlib/utils/a;->a(Ljava/io/RandomAccessFile;J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_a

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    const/16 v1, 0x10

    .line 26
    .line 27
    int-to-long v5, v1

    .line 28
    add-long/2addr v3, v5

    .line 29
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Lcom/snaptube/extractor/pluginlib/utils/a;->j(Ljava/io/RandomAccessFile;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    const-wide/16 v7, 0x18

    .line 37
    .line 38
    cmp-long v9, v3, v7

    .line 39
    .line 40
    if-gez v9, :cond_0

    .line 41
    .line 42
    sget-object p1, Ll0/m;->a:Ll0/m$a;

    .line 43
    .line 44
    new-instance p1, Lr/a;

    .line 45
    .line 46
    const-string v1, "signing block: CD offset too small"

    .line 47
    .line 48
    invoke-direct {p1, v1}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    invoke-static {v0, v2}, Ls0/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    .line 61
    .line 62
    return-object p1

    .line 63
    :catch_0
    move-exception p1

    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_0
    sub-long v5, v3, v5

    .line 70
    .line 71
    :try_start_3
    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 72
    .line 73
    .line 74
    new-array v1, v1, [B

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 77
    .line 78
    .line 79
    sget-object v5, Lcom/snaptube/extractor/pluginlib/utils/a;->b:[B

    .line 80
    .line 81
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_1

    .line 86
    .line 87
    sget-object p1, Ll0/m;->a:Ll0/m$a;

    .line 88
    .line 89
    new-instance p1, Lr/a;

    .line 90
    .line 91
    const-string v1, "signing block: magic not found"

    .line 92
    .line 93
    invoke-direct {p1, v1}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :try_start_4
    invoke-static {v0, v2}, Ls0/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 105
    .line 106
    .line 107
    return-object p1

    .line 108
    :cond_1
    const/16 v1, 0x18

    .line 109
    .line 110
    int-to-long v5, v1

    .line 111
    sub-long v9, v3, v5

    .line 112
    .line 113
    :try_start_5
    invoke-virtual {v0, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p1, v0}, Lcom/snaptube/extractor/pluginlib/utils/a;->k(Ljava/io/RandomAccessFile;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v9

    .line 120
    cmp-long p1, v9, v7

    .line 121
    .line 122
    if-ltz p1, :cond_9

    .line 123
    .line 124
    const-wide/32 v7, 0x2000000

    .line 125
    .line 126
    .line 127
    cmp-long p1, v9, v7

    .line 128
    .line 129
    if-lez p1, :cond_2

    .line 130
    .line 131
    goto/16 :goto_2

    .line 132
    .line 133
    :cond_2
    sub-long v5, v9, v5

    .line 134
    .line 135
    long-to-int p1, v5

    .line 136
    sub-long/2addr v3, v9

    .line 137
    const/16 v1, 0x8

    .line 138
    .line 139
    int-to-long v5, v1

    .line 140
    sub-long/2addr v3, v5

    .line 141
    add-long/2addr v3, v5

    .line 142
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 143
    .line 144
    .line 145
    new-array p1, p1, [B

    .line 146
    .line 147
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 155
    .line 156
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    move-object v1, v2

    .line 161
    move-object v3, v1

    .line 162
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    const/16 v5, 0xc

    .line 167
    .line 168
    if-lt v4, v5, :cond_6

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    .line 171
    .line 172
    .line 173
    move-result-wide v4

    .line 174
    const-wide/16 v6, 0x4

    .line 175
    .line 176
    cmp-long v8, v4, v6

    .line 177
    .line 178
    if-ltz v8, :cond_6

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    int-to-long v6, v6

    .line 185
    cmp-long v8, v4, v6

    .line 186
    .line 187
    if-lez v8, :cond_3

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    int-to-long v6, v6

    .line 195
    const-wide v8, 0xffffffffL

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    and-long/2addr v6, v8

    .line 201
    const/4 v8, 0x4

    .line 202
    int-to-long v8, v8

    .line 203
    sub-long/2addr v4, v8

    .line 204
    long-to-int v5, v4

    .line 205
    const-wide v8, 0xf05368c0L

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    cmp-long v4, v6, v8

    .line 211
    .line 212
    if-nez v4, :cond_4

    .line 213
    .line 214
    new-array v1, v5, [B

    .line 215
    .line 216
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_4
    const-wide/32 v8, 0x7109871a

    .line 221
    .line 222
    .line 223
    cmp-long v4, v6, v8

    .line 224
    .line 225
    if-nez v4, :cond_5

    .line 226
    .line 227
    new-array v3, v5, [B

    .line 228
    .line 229
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 230
    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_5
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-lt v4, v5, :cond_6

    .line 238
    .line 239
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    add-int/2addr v4, v5

    .line 244
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 245
    .line 246
    .line 247
    goto :goto_0

    .line 248
    :cond_6
    :goto_1
    if-nez v1, :cond_8

    .line 249
    .line 250
    if-nez v3, :cond_7

    .line 251
    .line 252
    sget-object p1, Ll0/m;->a:Ll0/m$a;

    .line 253
    .line 254
    new-instance p1, Lr/a;

    .line 255
    .line 256
    const-string v1, "signing block: no v2/v3 scheme found"

    .line 257
    .line 258
    invoke-direct {p1, v1}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 269
    :try_start_6
    invoke-static {v0, v2}, Ls0/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 270
    .line 271
    .line 272
    return-object p1

    .line 273
    :cond_7
    move-object v1, v3

    .line 274
    :cond_8
    :try_start_7
    sget-object p1, Lcom/snaptube/extractor/pluginlib/utils/a;->a:Lcom/snaptube/extractor/pluginlib/utils/a;

    .line 275
    .line 276
    invoke-direct {p1, v1}, Lcom/snaptube/extractor/pluginlib/utils/a;->h([B)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 280
    :try_start_8
    invoke-static {v0, v2}, Ls0/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 281
    .line 282
    .line 283
    return-object p1

    .line 284
    :cond_9
    :goto_2
    :try_start_9
    sget-object p1, Ll0/m;->a:Ll0/m$a;

    .line 285
    .line 286
    new-instance p1, Lr/a;

    .line 287
    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string v3, "signing block: invalid block size "

    .line 294
    .line 295
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-direct {p1, v1}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 316
    :try_start_a
    invoke-static {v0, v2}, Ls0/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 317
    .line 318
    .line 319
    return-object p1

    .line 320
    :cond_a
    :try_start_b
    sget-object p1, Ll0/m;->a:Ll0/m$a;

    .line 321
    .line 322
    new-instance p1, Lr/a;

    .line 323
    .line 324
    const-string v1, "signing block: EOCD not found"

    .line 325
    .line 326
    invoke-direct {p1, v1}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 337
    :try_start_c
    invoke-static {v0, v2}, Ls0/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 338
    .line 339
    .line 340
    return-object p1

    .line 341
    :goto_3
    :try_start_d
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 342
    :catchall_1
    move-exception v1

    .line 343
    :try_start_e
    invoke-static {v0, p1}, Ls0/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 344
    .line 345
    .line 346
    throw v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 347
    :goto_4
    sget-object v0, Ll0/m;->a:Ll0/m$a;

    .line 348
    .line 349
    new-instance v0, Lr/a;

    .line 350
    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    const-string v2, "signing block error: "

    .line 357
    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-direct {v0, v1, p1}, Lr/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    .line 374
    .line 375
    invoke-static {v0}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    return-object p1
.end method

.method private final d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Ll0/m;->a:Ll0/m$a;

    .line 2
    .line 3
    new-instance v0, Ljava/util/zip/ZipFile;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    .line 8
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v3, "nextElement(...)"

    .line 24
    .line 25
    invoke-static {v1, v3}, Lv0/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v3}, Lv0/m;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const-string v4, "META-INF/"

    .line 38
    .line 39
    const/4 v5, 0x2

    .line 40
    const/4 v6, 0x0

    .line 41
    invoke-static {v3, v4, v6, v5, v2}, Lz0/n;->y(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    const-string v4, ".RSA"

    .line 48
    .line 49
    invoke-static {v3, v4, v6, v5, v2}, Lz0/n;->o(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    const-string v4, ".DSA"

    .line 56
    .line 57
    invoke-static {v3, v4, v6, v5, v2}, Lz0/n;->o(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_1

    .line 62
    .line 63
    const-string v4, ".EC"

    .line 64
    .line 65
    invoke-static {v3, v4, v6, v5, v2}, Lz0/n;->o(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 75
    .line 76
    .line 77
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    invoke-static {p1}, Lv0/m;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/utils/a;->i(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-nez v1, :cond_2

    .line 86
    .line 87
    sget-object v1, Ll0/m;->a:Ll0/m$a;

    .line 88
    .line 89
    new-instance v1, Lr/a;

    .line 90
    .line 91
    const-string v3, "v1: generate cert null"

    .line 92
    .line 93
    invoke-direct {v1, v3}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 104
    :try_start_3
    invoke-static {p1, v2}, Ls0/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    .line 106
    .line 107
    :try_start_4
    invoke-static {v0, v2}, Ls0/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    .line 109
    .line 110
    return-object v1

    .line 111
    :catchall_1
    move-exception p1

    .line 112
    goto :goto_3

    .line 113
    :catchall_2
    move-exception v1

    .line 114
    goto :goto_1

    .line 115
    :cond_2
    :try_start_5
    invoke-static {v1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 119
    :try_start_6
    invoke-static {p1, v2}, Ls0/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 120
    .line 121
    .line 122
    :try_start_7
    invoke-static {v0, v2}, Ls0/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 123
    .line 124
    .line 125
    return-object v1

    .line 126
    :goto_1
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 127
    :catchall_3
    move-exception v2

    .line 128
    :try_start_9
    invoke-static {p1, v1}, Ls0/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    throw v2

    .line 132
    :cond_3
    sget-object p1, Ll0/w;->a:Ll0/w;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 133
    .line 134
    :try_start_a
    invoke-static {v0, v2}, Ls0/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    sget-object p1, Ll0/w;->a:Ll0/w;

    .line 138
    .line 139
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 143
    goto :goto_4

    .line 144
    :goto_2
    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 145
    :catchall_4
    move-exception v1

    .line 146
    :try_start_c
    invoke-static {v0, p1}, Ls0/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 150
    :goto_3
    sget-object v0, Ll0/m;->a:Ll0/m$a;

    .line 151
    .line 152
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    :goto_4
    invoke-static {p1}, Ll0/m;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_4

    .line 165
    .line 166
    new-instance v0, Lr/a;

    .line 167
    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v2, "v1 cert error: "

    .line 174
    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-direct {v0, v1, p1}, Lr/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v0}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    return-object p1

    .line 201
    :cond_4
    new-instance p1, Lr/a;

    .line 202
    .line 203
    const-string v0, "v1 cert not found"

    .line 204
    .line 205
    invoke-direct {p1, v0}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    return-object p1
.end method

.method private final g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Ll0/m;->a:Ll0/m$a;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/utils/a;->b(Landroid/content/Context;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Ll0/m;->c(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {p1}, Ll0/m;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    new-instance p1, Lr/a;

    .line 20
    .line 21
    const-string p2, "cert fail unknown"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-static {p1}, Ll0/m;->c(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    :cond_2
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    new-instance p1, Lr/a;

    .line 50
    .line 51
    const-string p2, "cert null"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_3
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lo/k;->a([B)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    return-object p1

    .line 86
    :goto_1
    sget-object p2, Ll0/m;->a:Ll0/m$a;

    .line 87
    .line 88
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Ll0/m;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    new-instance p2, Lr/a;

    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v1, "signature digest fail: "

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-direct {p2, v0, p1}, Lr/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    invoke-static {p2}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    return-object p1

    .line 137
    :cond_4
    new-instance p1, Lr/a;

    .line 138
    .line 139
    const-string p2, "signature digest fail"

    .line 140
    .line 141
    invoke-direct {p1, p2}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    return-object p1
.end method

.method private final h([B)Ljava/lang/Object;
    .locals 5

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    sget-object p1, Ll0/m;->a:Ll0/m$a;

    .line 20
    .line 21
    new-instance p1, Lr/a;

    .line 22
    .line 23
    const-string v0, "v2/v3: too short"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :catch_0
    move-exception p1

    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v3, 0x4

    .line 45
    if-lt v1, v3, :cond_e

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-le v1, v4, :cond_1

    .line 52
    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-lt v1, v3, :cond_d

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-le v1, v4, :cond_2

    .line 66
    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-lt v1, v2, :cond_c

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-le v1, v4, :cond_3

    .line 80
    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :cond_3
    new-array v1, v1, [B

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-ltz v0, :cond_b

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-le v0, v1, :cond_4

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    add-int/2addr v1, v0

    .line 115
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-ge v0, v2, :cond_5

    .line 123
    .line 124
    sget-object p1, Ll0/m;->a:Ll0/m$a;

    .line 125
    .line 126
    new-instance p1, Lr/a;

    .line 127
    .line 128
    const-string v0, "v2/v3: no certs section"

    .line 129
    .line 130
    invoke-direct {p1, v0}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-lt v0, v3, :cond_a

    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-le v0, v1, :cond_6

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    const/4 v1, 0x1

    .line 160
    if-lt v0, v1, :cond_9

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-le v0, v1, :cond_7

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_7
    new-array v0, v0, [B

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    .line 174
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 175
    .line 176
    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 177
    .line 178
    .line 179
    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/utils/a;->i(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    if-nez p1, :cond_8

    .line 184
    .line 185
    sget-object p1, Ll0/m;->a:Ll0/m$a;

    .line 186
    .line 187
    new-instance p1, Lr/a;

    .line 188
    .line 189
    const-string v0, "v2/v3: generate cert null"

    .line 190
    .line 191
    invoke-direct {p1, v0}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    return-object p1

    .line 203
    :cond_8
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    return-object p1

    .line 208
    :cond_9
    :goto_0
    sget-object p1, Ll0/m;->a:Ll0/m$a;

    .line 209
    .line 210
    new-instance p1, Lr/a;

    .line 211
    .line 212
    const-string v0, "v2/v3: invalid cert len"

    .line 213
    .line 214
    invoke-direct {p1, v0}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    return-object p1

    .line 226
    :cond_a
    :goto_1
    sget-object p1, Ll0/m;->a:Ll0/m$a;

    .line 227
    .line 228
    new-instance p1, Lr/a;

    .line 229
    .line 230
    const-string v0, "v2/v3: invalid certs seq len"

    .line 231
    .line 232
    invoke-direct {p1, v0}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    return-object p1

    .line 244
    :cond_b
    :goto_2
    sget-object p1, Ll0/m;->a:Ll0/m$a;

    .line 245
    .line 246
    new-instance p1, Lr/a;

    .line 247
    .line 248
    const-string v0, "v2/v3: invalid digests len"

    .line 249
    .line 250
    invoke-direct {p1, v0}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    return-object p1

    .line 262
    :cond_c
    :goto_3
    sget-object p1, Ll0/m;->a:Ll0/m$a;

    .line 263
    .line 264
    new-instance p1, Lr/a;

    .line 265
    .line 266
    const-string v0, "v2/v3: invalid signed data len"

    .line 267
    .line 268
    invoke-direct {p1, v0}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    return-object p1

    .line 280
    :cond_d
    :goto_4
    sget-object p1, Ll0/m;->a:Ll0/m$a;

    .line 281
    .line 282
    new-instance p1, Lr/a;

    .line 283
    .line 284
    const-string v0, "v2/v3: invalid signer len"

    .line 285
    .line 286
    invoke-direct {p1, v0}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    return-object p1

    .line 298
    :cond_e
    :goto_5
    sget-object p1, Ll0/m;->a:Ll0/m$a;

    .line 299
    .line 300
    new-instance p1, Lr/a;

    .line 301
    .line 302
    const-string v0, "v2/v3: invalid signers len"

    .line 303
    .line 304
    invoke-direct {p1, v0}, Lr/a;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-static {p1}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    return-object p1

    .line 316
    :goto_6
    sget-object v0, Ll0/m;->a:Ll0/m$a;

    .line 317
    .line 318
    new-instance v0, Lr/a;

    .line 319
    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    const-string v2, "v2/v3 parse error: "

    .line 326
    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-direct {v0, v1, p1}, Lr/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    .line 343
    .line 344
    invoke-static {v0}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    return-object p1
.end method

.method private final i(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    const-string v0, "X.509"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 12
    .line 13
    return-object p1
.end method

.method private final j(Ljava/io/RandomAccessFile;)J
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    int-to-long v0, p1

    .line 22
    const-wide v2, 0xffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    and-long/2addr v0, v2

    .line 28
    return-wide v0
.end method

.method private final k(Ljava/io/RandomAccessFile;)J
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/snaptube/extractor/pluginlib/utils/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lv0/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/snaptube/extractor/pluginlib/utils/a;->c:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Ll0/m;->a:Ll0/m$a;

    .line 11
    .line 12
    sget-object p1, Lcom/snaptube/extractor/pluginlib/utils/a;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Lv0/m;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    const-string v0, "SHA1"

    .line 23
    .line 24
    invoke-direct {p0, p1, v0}, Lcom/snaptube/extractor/pluginlib/utils/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Ll0/m;->c(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    invoke-static {p1}, Ll0/m;->c(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const-string v0, ""

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move-object v0, p1

    .line 45
    :goto_0
    check-cast v0, Ljava/lang/String;

    .line 46
    .line 47
    sput-object v0, Lcom/snaptube/extractor/pluginlib/utils/a;->c:Ljava/lang/String;

    .line 48
    .line 49
    return-object p1
.end method
