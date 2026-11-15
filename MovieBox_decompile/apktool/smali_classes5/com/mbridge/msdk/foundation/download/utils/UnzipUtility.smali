.class public Lcom/mbridge/msdk/foundation/download/utils/UnzipUtility;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "UnzipUtility"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private extractFile(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p2, 0x0

    .line 24
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 25
    .line 26
    new-instance v2, Ljava/io/FileOutputStream;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    .line 33
    .line 34
    const/16 p2, 0x1000

    .line 35
    .line 36
    :try_start_1
    new-array p2, p2, [B

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v2, -0x1

    .line 43
    if-eq v0, v2, :cond_1

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v1, p2, v2, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_4

    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :goto_1
    move-object p2, v1

    .line 59
    goto :goto_2

    .line 60
    :catchall_1
    move-exception p1

    .line 61
    goto :goto_3

    .line 62
    :catch_1
    move-exception p1

    .line 63
    :goto_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    .line 64
    .line 65
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    :goto_3
    move-object v1, p2

    .line 70
    :goto_4
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 73
    .line 74
    .line 75
    :cond_2
    throw p1
.end method


# virtual methods
.method public unzip(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "../"

    .line 2
    .line 3
    const-string v1, ".."

    .line 4
    .line 5
    const-string v2, "UnzipUtility"

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    if-eqz p1, :cond_18

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_15

    .line 13
    .line 14
    :cond_0
    const-string v4, "/"

    .line 15
    .line 16
    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-nez v5, :cond_1

    .line 21
    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    :cond_1
    new-instance v4, Ljava/io/File;

    .line 38
    .line 39
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    return p1

    .line 50
    :cond_2
    const/4 p1, 0x0

    .line 51
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    .line 52
    .line 53
    invoke-direct {v5, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 57
    .line 58
    .line 59
    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 60
    move-object v6, p1

    .line 61
    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    const/4 v8, 0x0

    .line 66
    if-eqz v7, :cond_11

    .line 67
    .line 68
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    check-cast v7, Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    const/4 v9, 0x2

    .line 75
    if-nez v7, :cond_5

    .line 76
    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 92
    .line 93
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catch_1
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_2
    return v9

    .line 106
    :cond_5
    :try_start_4
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    if-nez v11, :cond_e

    .line 115
    .line 116
    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    if-nez v11, :cond_e

    .line 121
    .line 122
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    if-eqz v11, :cond_6

    .line 127
    .line 128
    goto/16 :goto_8

    .line 129
    .line 130
    :cond_6
    new-instance v11, Ljava/io/File;

    .line 131
    .line 132
    new-instance v12, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v12, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    .line 149
    .line 150
    :try_start_5
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    goto :goto_3

    .line 155
    :catchall_0
    move-exception p2

    .line 156
    move-object v0, p2

    .line 157
    move-object p2, p1

    .line 158
    move-object p1, v6

    .line 159
    goto/16 :goto_11

    .line 160
    .line 161
    :catch_2
    :try_start_6
    const-string v10, ""

    .line 162
    .line 163
    :goto_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v12

    .line 167
    if-nez v12, :cond_b

    .line 168
    .line 169
    invoke-virtual {v10, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    if-eqz v12, :cond_b

    .line 174
    .line 175
    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v12

    .line 179
    if-nez v12, :cond_b

    .line 180
    .line 181
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    if-eqz v10, :cond_7

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_7
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    if-eqz v9, :cond_8

    .line 193
    .line 194
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 195
    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :catch_3
    move-exception p2

    .line 200
    move-object v0, p2

    .line 201
    move-object p2, p1

    .line 202
    move-object p1, v6

    .line 203
    goto/16 :goto_d

    .line 204
    .line 205
    :cond_8
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    if-nez v9, :cond_9

    .line 214
    .line 215
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 220
    .line 221
    .line 222
    :cond_9
    new-instance v9, Ljava/io/FileOutputStream;

    .line 223
    .line 224
    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 225
    .line 226
    .line 227
    :try_start_7
    invoke-virtual {v5, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    const/16 v6, 0x400

    .line 232
    .line 233
    new-array v7, v6, [B

    .line 234
    .line 235
    :goto_4
    invoke-virtual {p1, v7, v8, v6}, Ljava/io/InputStream;->read([BII)I

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    if-eq v10, v3, :cond_a

    .line 240
    .line 241
    invoke-virtual {v9, v7, v8, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :catchall_1
    move-exception p2

    .line 249
    goto/16 :goto_12

    .line 250
    .line 251
    :catch_4
    move-exception p2

    .line 252
    goto/16 :goto_e

    .line 253
    .line 254
    :cond_a
    move-object v6, v9

    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_b
    :goto_5
    if-eqz p1, :cond_c

    .line 258
    .line 259
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 260
    .line 261
    .line 262
    goto :goto_6

    .line 263
    :catch_5
    move-exception p1

    .line 264
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    :cond_c
    :goto_6
    if-eqz v6, :cond_d

    .line 272
    .line 273
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 274
    .line 275
    .line 276
    goto :goto_7

    .line 277
    :catch_6
    move-exception p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    :cond_d
    :goto_7
    return v9

    .line 286
    :cond_e
    :goto_8
    if-eqz p1, :cond_f

    .line 287
    .line 288
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 289
    .line 290
    .line 291
    goto :goto_9

    .line 292
    :catch_7
    move-exception p1

    .line 293
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    :cond_f
    :goto_9
    if-eqz v6, :cond_10

    .line 301
    .line 302
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 303
    .line 304
    .line 305
    goto :goto_a

    .line 306
    :catch_8
    move-exception p1

    .line 307
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    :cond_10
    :goto_a
    return v9

    .line 315
    :cond_11
    :try_start_c
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 316
    .line 317
    .line 318
    if-eqz p1, :cond_12

    .line 319
    .line 320
    :try_start_d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 321
    .line 322
    .line 323
    goto :goto_b

    .line 324
    :catch_9
    move-exception p1

    .line 325
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    :cond_12
    :goto_b
    if-eqz v6, :cond_13

    .line 333
    .line 334
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 335
    .line 336
    .line 337
    goto :goto_c

    .line 338
    :catch_a
    move-exception p1

    .line 339
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    :cond_13
    :goto_c
    return v8

    .line 347
    :catchall_2
    move-exception p2

    .line 348
    move-object v0, p2

    .line 349
    move-object p2, p1

    .line 350
    goto :goto_11

    .line 351
    :catch_b
    move-exception p2

    .line 352
    move-object v0, p2

    .line 353
    move-object p2, p1

    .line 354
    :goto_d
    move-object v9, p1

    .line 355
    move-object p1, p2

    .line 356
    move-object p2, v0

    .line 357
    :goto_e
    :try_start_f
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    invoke-static {v2, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 362
    .line 363
    .line 364
    if-eqz p1, :cond_14

    .line 365
    .line 366
    :try_start_10
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 367
    .line 368
    .line 369
    goto :goto_f

    .line 370
    :catch_c
    move-exception p1

    .line 371
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    :cond_14
    :goto_f
    if-eqz v9, :cond_15

    .line 379
    .line 380
    :try_start_11
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 381
    .line 382
    .line 383
    goto :goto_10

    .line 384
    :catch_d
    move-exception p1

    .line 385
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    :cond_15
    :goto_10
    const/4 p1, 0x3

    .line 393
    return p1

    .line 394
    :catchall_3
    move-exception p2

    .line 395
    move-object v0, p2

    .line 396
    move-object p2, p1

    .line 397
    move-object p1, v9

    .line 398
    :goto_11
    move-object v9, p1

    .line 399
    move-object p1, p2

    .line 400
    move-object p2, v0

    .line 401
    :goto_12
    if-eqz p1, :cond_16

    .line 402
    .line 403
    :try_start_12
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    .line 404
    .line 405
    .line 406
    goto :goto_13

    .line 407
    :catch_e
    move-exception p1

    .line 408
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    :cond_16
    :goto_13
    if-eqz v9, :cond_17

    .line 416
    .line 417
    :try_start_13
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    .line 418
    .line 419
    .line 420
    goto :goto_14

    .line 421
    :catch_f
    move-exception p1

    .line 422
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object p1

    .line 426
    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    :cond_17
    :goto_14
    throw p2

    .line 430
    :cond_18
    :goto_15
    return v3
.end method
