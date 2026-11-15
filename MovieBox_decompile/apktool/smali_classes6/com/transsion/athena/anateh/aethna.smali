.class public Lcom/transsion/athena/anateh/aethna;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Ljava/nio/ByteBuffer;


# instance fields
.field private b:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/File;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/athena/anateh/aethna;->b:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    :try_start_0
    iget-object p1, p0, Lcom/transsion/athena/anateh/aethna;->b:Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string p1, "EncryptFile created"

    .line 26
    .line 27
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    sget-object p1, Lcom/transsion/athena/anateh/aethna;->a:Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    const p1, 0x8028

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    sput-object p1, Lcom/transsion/athena/anateh/aethna;->a:Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/transsion/athena/anateh/aethna;->b:Ljava/io/File;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    const-wide/16 v2, 0x2000

    .line 60
    .line 61
    cmp-long v0, v0, v2

    .line 62
    .line 63
    if-gez v0, :cond_3

    .line 64
    .line 65
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/transsion/athena/anateh/aethna;->b:Ljava/io/File;

    .line 68
    .line 69
    const-string v2, "rw"

    .line 70
    .line 71
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 72
    .line 73
    .line 74
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 75
    .line 76
    .line 77
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    sget-object v2, Lcom/transsion/athena/anateh/aethna;->a:Ljava/nio/ByteBuffer;

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    invoke-virtual {v2, v3, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/transsion/athena/aethna/athena;->i()Landroid/util/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v2, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    sget-object v4, Lcom/transsion/athena/anateh/aethna;->a:Ljava/nio/ByteBuffer;

    .line 105
    .line 106
    const/4 v5, 0x4

    .line 107
    invoke-virtual {v4, v5, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    .line 110
    :goto_1
    const/16 v2, 0x2000

    .line 111
    .line 112
    if-ge v3, v2, :cond_2

    .line 113
    .line 114
    sget-object v2, Lcom/transsion/athena/anateh/aethna;->a:Ljava/nio/ByteBuffer;

    .line 115
    .line 116
    add-int/lit8 v4, v3, 0xa

    .line 117
    .line 118
    mul-int/2addr v4, v5

    .line 119
    invoke-virtual {v2, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 120
    .line 121
    .line 122
    add-int/lit8 v3, v3, 0x4

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catchall_0
    move-exception v2

    .line 126
    goto/16 :goto_f

    .line 127
    .line 128
    :catch_1
    move-exception v2

    .line 129
    move-object v6, v1

    .line 130
    move-object v1, p1

    .line 131
    move-object p1, v6

    .line 132
    goto :goto_2

    .line 133
    :cond_2
    const-wide/16 v2, 0x0

    .line 134
    .line 135
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 136
    .line 137
    .line 138
    sget-object v2, Lcom/transsion/athena/anateh/aethna;->a:Ljava/nio/ByteBuffer;

    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :catchall_1
    move-exception v2

    .line 149
    move-object v1, p1

    .line 150
    goto/16 :goto_f

    .line 151
    .line 152
    :catch_2
    move-exception v2

    .line 153
    move-object v1, p1

    .line 154
    :goto_2
    move-object v6, v0

    .line 155
    move-object v0, p1

    .line 156
    move-object p1, v1

    .line 157
    move-object v1, v6

    .line 158
    goto :goto_9

    .line 159
    :catchall_2
    move-exception v0

    .line 160
    goto :goto_7

    .line 161
    :catch_3
    move-exception v0

    .line 162
    move-object v2, v0

    .line 163
    goto :goto_8

    .line 164
    :cond_3
    move-object v0, p1

    .line 165
    move-object v1, v0

    .line 166
    :goto_3
    if-eqz p1, :cond_4

    .line 167
    .line 168
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :catch_4
    move-exception p1

    .line 173
    goto :goto_5

    .line 174
    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 177
    .line 178
    .line 179
    goto :goto_6

    .line 180
    :goto_5
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_5
    :goto_6
    if-eqz v0, :cond_8

    .line 188
    .line 189
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 190
    .line 191
    .line 192
    goto :goto_e

    .line 193
    :catch_5
    move-exception p1

    .line 194
    goto :goto_d

    .line 195
    :goto_7
    move-object v1, p1

    .line 196
    move-object v2, v0

    .line 197
    move-object v0, v1

    .line 198
    goto :goto_f

    .line 199
    :goto_8
    move-object v0, p1

    .line 200
    move-object v1, v0

    .line 201
    :goto_9
    :try_start_6
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-static {v2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 206
    .line 207
    .line 208
    if-eqz p1, :cond_6

    .line 209
    .line 210
    :try_start_7
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V

    .line 211
    .line 212
    .line 213
    goto :goto_a

    .line 214
    :catch_6
    move-exception p1

    .line 215
    goto :goto_b

    .line 216
    :cond_6
    :goto_a
    if-eqz v0, :cond_7

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 219
    .line 220
    .line 221
    goto :goto_c

    .line 222
    :goto_b
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :cond_7
    :goto_c
    if-eqz v1, :cond_8

    .line 230
    .line 231
    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 232
    .line 233
    .line 234
    goto :goto_e

    .line 235
    :goto_d
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :cond_8
    :goto_e
    return-void

    .line 243
    :catchall_3
    move-exception v2

    .line 244
    move-object v6, v1

    .line 245
    move-object v1, v0

    .line 246
    move-object v0, v6

    .line 247
    :goto_f
    if-eqz p1, :cond_9

    .line 248
    .line 249
    :try_start_9
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V

    .line 250
    .line 251
    .line 252
    goto :goto_10

    .line 253
    :catch_7
    move-exception p1

    .line 254
    goto :goto_11

    .line 255
    :cond_9
    :goto_10
    if-eqz v1, :cond_a

    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 258
    .line 259
    .line 260
    goto :goto_12

    .line 261
    :goto_11
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    :cond_a
    :goto_12
    if-eqz v0, :cond_b

    .line 269
    .line 270
    :try_start_a
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 271
    .line 272
    .line 273
    goto :goto_13

    .line 274
    :catch_8
    move-exception p1

    .line 275
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    :cond_b
    :goto_13
    throw v2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/transsion/athena/aethna/athena;->d()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const-string v0, "readBuffer passwords is empty"

    .line 21
    .line 22
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/transsion/athena/anateh/aethna;->b:Ljava/io/File;

    .line 32
    .line 33
    const-string v5, "rw"

    .line 34
    .line 35
    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 39
    .line 40
    .line 41
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 42
    :try_start_2
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-wide/16 v5, 0x0

    .line 47
    .line 48
    invoke-virtual {v3, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 49
    .line 50
    .line 51
    sget-object v5, Lcom/transsion/athena/anateh/aethna;->a:Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const v6, 0x8028

    .line 58
    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    invoke-virtual {v3, v5, v7, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 62
    .line 63
    .line 64
    sget-object v5, Lcom/transsion/athena/anateh/aethna;->a:Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    const/4 v6, 0x4

    .line 67
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, [B

    .line 76
    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    new-instance v5, Lcom/transsion/athena/anateh/athena;

    .line 80
    .line 81
    invoke-direct {v5, v1}, Lcom/transsion/athena/anateh/athena;-><init>([B)V

    .line 82
    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    move v8, v7

    .line 86
    :goto_0
    sget-object v9, Lcom/transsion/athena/anateh/aethna;->a:Ljava/nio/ByteBuffer;

    .line 87
    .line 88
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-ge v8, v9, :cond_5

    .line 93
    .line 94
    if-nez v8, :cond_1

    .line 95
    .line 96
    sget-object v9, Lcom/transsion/athena/anateh/aethna;->a:Ljava/nio/ByteBuffer;

    .line 97
    .line 98
    add-int/lit8 v10, v8, 0xa

    .line 99
    .line 100
    mul-int/2addr v10, v6

    .line 101
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    new-array v10, v9, [B

    .line 106
    .line 107
    invoke-virtual {v3, v10, v7, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    move-object v1, v2

    .line 113
    move-object v2, v4

    .line 114
    goto/16 :goto_7

    .line 115
    .line 116
    :catch_0
    move-exception v1

    .line 117
    goto :goto_3

    .line 118
    :cond_1
    sget-object v9, Lcom/transsion/athena/anateh/aethna;->a:Ljava/nio/ByteBuffer;

    .line 119
    .line 120
    add-int/lit8 v10, v8, 0xa

    .line 121
    .line 122
    mul-int/2addr v10, v6

    .line 123
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    sget-object v10, Lcom/transsion/athena/anateh/aethna;->a:Ljava/nio/ByteBuffer;

    .line 128
    .line 129
    add-int/lit8 v11, v8, 0x9

    .line 130
    .line 131
    mul-int/2addr v11, v6

    .line 132
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    sub-int/2addr v9, v10

    .line 137
    new-array v10, v9, [B

    .line 138
    .line 139
    invoke-virtual {v3, v10, v7, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 140
    .line 141
    .line 142
    :goto_1
    invoke-virtual {v5, v10}, Lcom/transsion/athena/anateh/athena;->a([B)[B

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    new-instance v10, Ljava/lang/String;

    .line 147
    .line 148
    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    .line 150
    .line 151
    :try_start_3
    new-instance v9, Lorg/json/JSONObject;

    .line 152
    .line 153
    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v11, "tid"

    .line 157
    .line 158
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    if-eqz v11, :cond_4

    .line 163
    .line 164
    const-string v11, "event"

    .line 165
    .line 166
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    if-nez v9, :cond_2

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_2
    if-nez v1, :cond_3

    .line 174
    .line 175
    :try_start_4
    const-string v1, "\n"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    :cond_3
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 181
    .line 182
    .line 183
    move v1, v7

    .line 184
    goto :goto_2

    .line 185
    :catchall_1
    move-exception v0

    .line 186
    goto/16 :goto_10

    .line 187
    .line 188
    :catch_1
    move-exception v9

    .line 189
    :try_start_5
    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    invoke-static {v9}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 194
    .line 195
    .line 196
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :goto_3
    move-object v12, v4

    .line 200
    move-object v4, v2

    .line 201
    move-object v2, v12

    .line 202
    goto :goto_8

    .line 203
    :cond_5
    if-eqz v2, :cond_6

    .line 204
    .line 205
    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :catch_2
    move-exception v1

    .line 210
    goto :goto_5

    .line 211
    :cond_6
    :goto_4
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 212
    .line 213
    .line 214
    goto :goto_6

    .line 215
    :goto_5
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :goto_6
    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 223
    .line 224
    .line 225
    goto :goto_e

    .line 226
    :catch_3
    move-exception v1

    .line 227
    goto :goto_d

    .line 228
    :catchall_2
    move-exception v0

    .line 229
    move-object v1, v2

    .line 230
    :goto_7
    move-object v4, v2

    .line 231
    move-object v2, v1

    .line 232
    goto :goto_10

    .line 233
    :catch_4
    move-exception v1

    .line 234
    move-object v4, v2

    .line 235
    goto :goto_8

    .line 236
    :catchall_3
    move-exception v0

    .line 237
    move-object v1, v2

    .line 238
    move-object v4, v1

    .line 239
    goto :goto_f

    .line 240
    :catch_5
    move-exception v1

    .line 241
    move-object v3, v2

    .line 242
    move-object v4, v3

    .line 243
    :goto_8
    :try_start_8
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget-object v1, p0, Lcom/transsion/athena/anateh/aethna;->b:Ljava/io/File;

    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_7

    .line 257
    .line 258
    const-string v1, "file deleted"

    .line 259
    .line 260
    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 261
    .line 262
    .line 263
    goto :goto_9

    .line 264
    :catchall_4
    move-exception v0

    .line 265
    move-object v1, v2

    .line 266
    move-object v2, v3

    .line 267
    goto :goto_f

    .line 268
    :cond_7
    :goto_9
    if-eqz v4, :cond_8

    .line 269
    .line 270
    :try_start_9
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V

    .line 271
    .line 272
    .line 273
    goto :goto_a

    .line 274
    :catch_6
    move-exception v1

    .line 275
    goto :goto_b

    .line 276
    :cond_8
    :goto_a
    if-eqz v2, :cond_9

    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 279
    .line 280
    .line 281
    goto :goto_c

    .line 282
    :goto_b
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :cond_9
    :goto_c
    if-eqz v3, :cond_a

    .line 290
    .line 291
    :try_start_a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 292
    .line 293
    .line 294
    goto :goto_e

    .line 295
    :goto_d
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_a
    :goto_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    return-object v0

    .line 307
    :goto_f
    move-object v3, v2

    .line 308
    move-object v2, v4

    .line 309
    move-object v4, v1

    .line 310
    :goto_10
    if-eqz v2, :cond_b

    .line 311
    .line 312
    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    .line 313
    .line 314
    .line 315
    goto :goto_11

    .line 316
    :catch_7
    move-exception v1

    .line 317
    goto :goto_12

    .line 318
    :cond_b
    :goto_11
    if-eqz v4, :cond_c

    .line 319
    .line 320
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 321
    .line 322
    .line 323
    goto :goto_13

    .line 324
    :goto_12
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    :cond_c
    :goto_13
    if-eqz v3, :cond_d

    .line 332
    .line 333
    :try_start_c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 334
    .line 335
    .line 336
    goto :goto_14

    .line 337
    :catch_8
    move-exception v1

    .line 338
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    :cond_d
    :goto_14
    throw v0
.end method
