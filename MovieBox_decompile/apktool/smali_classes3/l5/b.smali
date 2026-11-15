.class public Ll5/b;
.super Ljava/lang/Object;
.source "source.java"


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


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lm5/d;
    .locals 10

    .line 1
    const-string v0, "hh:mm:ss,ms"

    .line 2
    .line 3
    new-instance v1, Lm5/d;

    .line 4
    .line 5
    invoke-direct {v1}, Lm5/d;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lm5/b;

    .line 9
    .line 10
    invoke-direct {v2}, Lm5/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    new-instance p2, Ljava/io/BufferedReader;

    .line 20
    .line 21
    new-instance v3, Ljava/io/InputStreamReader;

    .line 22
    .line 23
    invoke-direct {v3, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 31
    .line 32
    new-instance v4, Ljava/io/InputStreamReader;

    .line 33
    .line 34
    invoke-direct {v4, p3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 38
    .line 39
    .line 40
    move-object p2, v3

    .line 41
    :goto_0
    iput-object p1, v1, Lm5/d;->e:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 v3, 0x0

    .line 48
    move v4, v3

    .line 49
    :goto_1
    const/4 v5, 0x1

    .line 50
    if-eqz p1, :cond_b

    .line 51
    .line 52
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    add-int/lit8 v6, v4, 0x1

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    if-nez v7, :cond_9

    .line 63
    .line 64
    add-int/lit8 v6, v4, 0x2

    .line 65
    .line 66
    :try_start_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const/16 v7, 0xc

    .line 75
    .line 76
    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    sub-int/2addr v9, v7

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    new-instance v9, Lm5/c;

    .line 94
    .line 95
    invoke-direct {v9, v0, v8}, Lm5/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iput-object v9, v2, Lm5/b;->b:Lm5/c;

    .line 99
    .line 100
    new-instance v8, Lm5/c;

    .line 101
    .line 102
    invoke-direct {v8, v0, v7}, Lm5/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iput-object v8, v2, Lm5/b;->c:Lm5/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    move v7, v5

    .line 108
    goto :goto_2

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    goto/16 :goto_7

    .line 111
    .line 112
    :catch_0
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    iget-object v8, v1, Lm5/d;->j:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v8, "incorrect time format at line "

    .line 123
    .line 124
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    iput-object v7, v1, Lm5/d;->j:Ljava/lang/String;

    .line 135
    .line 136
    move v7, v3

    .line 137
    :goto_2
    if-eqz v7, :cond_7

    .line 138
    .line 139
    add-int/lit8 v4, v4, 0x3

    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    const-string v6, ""

    .line 146
    .line 147
    if-eqz p1, :cond_1

    .line 148
    .line 149
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    goto :goto_3

    .line 154
    :cond_1
    move-object p1, v6

    .line 155
    :goto_3
    const-string v7, "<br />"

    .line 156
    .line 157
    move-object v8, v6

    .line 158
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    if-nez v9, :cond_3

    .line 163
    .line 164
    new-instance v9, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    if-eqz p1, :cond_2

    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    add-int/lit8 v4, v4, 0x1

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_2
    move-object p1, v6

    .line 196
    goto :goto_4

    .line 197
    :cond_3
    invoke-virtual {v8, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-eqz v6, :cond_4

    .line 202
    .line 203
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    add-int/lit8 v6, v6, -0x6

    .line 208
    .line 209
    invoke-virtual {v8, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    :cond_4
    iput-object v8, v2, Lm5/b;->d:Ljava/lang/String;

    .line 214
    .line 215
    iget-object v6, v2, Lm5/b;->b:Lm5/c;

    .line 216
    .line 217
    iget v6, v6, Lm5/c;->a:I

    .line 218
    .line 219
    :goto_5
    iget-object v7, v1, Lm5/d;->i:Ljava/util/TreeMap;

    .line 220
    .line 221
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    invoke-virtual {v7, v8}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    if-eqz v7, :cond_5

    .line 230
    .line 231
    add-int/lit8 v6, v6, 0x1

    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_5
    iget-object v7, v2, Lm5/b;->b:Lm5/c;

    .line 235
    .line 236
    iget v7, v7, Lm5/c;->a:I

    .line 237
    .line 238
    if-eq v6, v7, :cond_6

    .line 239
    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    iget-object v8, v1, Lm5/d;->j:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v8, "caption with same start time found...\n\n"

    .line 251
    .line 252
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    iput-object v7, v1, Lm5/d;->j:Ljava/lang/String;

    .line 260
    .line 261
    :cond_6
    iget-object v7, v1, Lm5/d;->i:Ljava/util/TreeMap;

    .line 262
    .line 263
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    invoke-virtual {v7, v6, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move v6, v4

    .line 271
    :cond_7
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    if-nez p1, :cond_8

    .line 276
    .line 277
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    add-int/lit8 v6, v6, 0x1

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_8
    new-instance p1, Lm5/b;

    .line 289
    .line 290
    invoke-direct {p1}, Lm5/b;-><init>()V

    .line 291
    .line 292
    .line 293
    move-object v2, p1

    .line 294
    :cond_9
    move v4, v6

    .line 295
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    goto/16 :goto_1

    .line 300
    .line 301
    :goto_7
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    iget-object v0, v1, Lm5/d;->j:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v0, "unexpected end of file, maybe last caption is not complete.\n\n"

    .line 312
    .line 313
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    iput-object p2, v1, Lm5/d;->j:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 323
    .line 324
    .line 325
    if-eqz p3, :cond_c

    .line 326
    .line 327
    :goto_8
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 328
    .line 329
    .line 330
    goto :goto_9

    .line 331
    :catchall_1
    move-exception p1

    .line 332
    if-eqz p3, :cond_a

    .line 333
    .line 334
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 335
    .line 336
    .line 337
    :cond_a
    throw p1

    .line 338
    :cond_b
    if-eqz p3, :cond_c

    .line 339
    .line 340
    goto :goto_8

    .line 341
    :cond_c
    :goto_9
    iput-boolean v5, v1, Lm5/d;->m:Z

    .line 342
    .line 343
    return-object v1
.end method
