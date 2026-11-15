.class public final Lcom/transsion/ad/strategy/g;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/ad/strategy/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ad/strategy/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/strategy/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/strategy/g;->a:Lcom/transsion/ad/strategy/g;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/ad/strategy/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .line 1
    const-string v0, " --> url = "

    .line 2
    .line 3
    const-string v1, " --> downloadFile() --> \u7d20\u6750\u52a0\u8f7d\u5931\u8d25 --> destination = "

    .line 4
    .line 5
    const-string v2, "destination"

    .line 6
    .line 7
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 19
    .line 20
    new-instance v2, Lokhttp3/Request$Builder;

    .line 21
    .line 22
    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 23
    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    const-string v4, ""

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v2

    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_1
    move-object v4, p1

    .line 34
    :goto_0
    invoke-virtual {v2, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    sget-object v4, Lwh/b;->a:Lwh/b;

    .line 43
    .line 44
    invoke-virtual {v4}, Lwh/b;->d()Lokhttp3/OkHttpClient;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lokhttp3/Response;->isSuccessful()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_2

    .line 61
    .line 62
    sget-object v5, Lxh/a;->a:Lxh/a;

    .line 63
    .line 64
    sget-object v4, Lcom/transsion/ad/strategy/g;->a:Lcom/transsion/ad/strategy/g;

    .line 65
    .line 66
    invoke-direct {v4}, Lcom/transsion/ad/strategy/g;->b()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v2}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v4, " --> response = "

    .line 89
    .line 90
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    const/16 v10, 0x9

    .line 107
    .line 108
    const/4 v11, 0x0

    .line 109
    const/4 v6, 0x0

    .line 110
    const/4 v8, 0x6

    .line 111
    const/4 v9, 0x0

    .line 112
    invoke-static/range {v5 .. v11}, Lxh/a;->e(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return v3

    .line 116
    :cond_2
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-eqz v2, :cond_4

    .line 121
    .line 122
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 123
    .line 124
    .line 125
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-eqz v2, :cond_4

    .line 127
    .line 128
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 129
    .line 130
    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 131
    .line 132
    .line 133
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    .line 134
    .line 135
    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 136
    .line 137
    .line 138
    const/16 v6, 0x1000

    .line 139
    .line 140
    :try_start_3
    new-array v6, v6, [B

    .line 141
    .line 142
    :goto_1
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    const/4 v8, -0x1

    .line 147
    if-eq v7, v8, :cond_3

    .line 148
    .line 149
    invoke-virtual {v5, v6, v3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :catchall_1
    move-exception v6

    .line 154
    goto :goto_2

    .line 155
    :cond_3
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    .line 157
    const/4 v6, 0x0

    .line 158
    :try_start_4
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 159
    .line 160
    .line 161
    :try_start_5
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 162
    .line 163
    .line 164
    :try_start_6
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 165
    .line 166
    .line 167
    const/4 p1, 0x1

    .line 168
    return p1

    .line 169
    :catchall_2
    move-exception v4

    .line 170
    goto :goto_4

    .line 171
    :catchall_3
    move-exception v5

    .line 172
    goto :goto_3

    .line 173
    :goto_2
    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 174
    :catchall_4
    move-exception v7

    .line 175
    :try_start_8
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 179
    :goto_3
    :try_start_9
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 180
    :catchall_5
    move-exception v6

    .line 181
    :try_start_a
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 185
    :goto_4
    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 186
    :catchall_6
    move-exception v5

    .line 187
    :try_start_c
    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    throw v5

    .line 191
    :cond_4
    sget-object v2, Lcom/transsion/ad/strategy/g;->a:Lcom/transsion/ad/strategy/g;

    .line 192
    .line 193
    sget-object v4, Lxh/a;->a:Lxh/a;

    .line 194
    .line 195
    invoke-direct {v2}, Lcom/transsion/ad/strategy/g;->b()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v2, " --> downloadFile() --> \u7d20\u6750\u52a0\u8f7d\u5931\u8d25 --> response.body() == null || response.body?.byteStream()"

    .line 208
    .line 209
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    const/16 v9, 0xd

    .line 217
    .line 218
    const/4 v10, 0x0

    .line 219
    const/4 v5, 0x0

    .line 220
    const/4 v7, 0x0

    .line 221
    const/4 v8, 0x0

    .line 222
    invoke-static/range {v4 .. v10}, Lxh/a;->e(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 223
    .line 224
    .line 225
    return v3

    .line 226
    :goto_5
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 227
    .line 228
    invoke-static {v2}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    if-eqz v2, :cond_5

    .line 241
    .line 242
    sget-object v4, Lxh/a;->a:Lxh/a;

    .line 243
    .line 244
    sget-object v5, Lcom/transsion/ad/strategy/g;->a:Lcom/transsion/ad/strategy/g;

    .line 245
    .line 246
    invoke-direct {v5}, Lcom/transsion/ad/strategy/g;->b()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    new-instance v6, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string p2, " --> it = "

    .line 265
    .line 266
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    const/16 v9, 0x9

    .line 283
    .line 284
    const/4 v10, 0x0

    .line 285
    const/4 v5, 0x0

    .line 286
    const/4 v7, 0x6

    .line 287
    const/4 v8, 0x0

    .line 288
    invoke-static/range {v4 .. v10}, Lxh/a;->e(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    return v3

    .line 292
    :cond_5
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 293
    .line 294
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 295
    .line 296
    .line 297
    throw p1
.end method
