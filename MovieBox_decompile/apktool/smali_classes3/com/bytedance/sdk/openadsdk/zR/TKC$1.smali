.class Lcom/bytedance/sdk/openadsdk/zR/TKC$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/zR/TKC;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/zR/TKC;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/zR/TKC;I)I

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/Sj;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/Sj;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/zR/Sj;->Sj()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_0
    :goto_0
    new-instance v0, Ljava/net/URL;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/EjP;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->HiB()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/net/URLConnection;

    .line 57
    .line 58
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/EjP;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->Jcg()Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/EjP;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->Jcg()Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-lez v1, :cond_1

    .line 87
    .line 88
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/EjP;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->Jcg()Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_1

    .line 111
    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Ljava/util/Map$Entry;

    .line 117
    .line 118
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Ljava/lang/String;

    .line 123
    .line 124
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0, v3, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_1
    const-string v1, "POST"

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v1, "Content-Type"

    .line 140
    .line 141
    const-string v2, "application/json"

    .line 142
    .line 143
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .line 145
    .line 146
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 147
    .line 148
    .line 149
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 150
    :try_start_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 151
    .line 152
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/EjP;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->vS()Lorg/json/JSONObject;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 169
    .line 170
    .line 171
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    const/16 v2, 0xc8

    .line 179
    .line 180
    if-ne v1, v2, :cond_3

    .line 181
    .line 182
    new-instance v1, Ljava/io/BufferedReader;

    .line 183
    .line 184
    new-instance v2, Ljava/io/InputStreamReader;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 191
    .line 192
    .line 193
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 194
    .line 195
    .line 196
    new-instance v0, Ljava/lang/StringBuffer;

    .line 197
    .line 198
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 199
    .line 200
    .line 201
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    if-eqz v2, :cond_2

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 219
    .line 220
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/EjP;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    new-instance v2, Lorg/json/JSONObject;

    .line 225
    .line 226
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/zR/EjP;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 234
    .line 235
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/sP;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/zR/sP;->Sj()V

    .line 240
    .line 241
    .line 242
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 243
    .line 244
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/sP;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/zR/sP;->Sj(Lorg/json/JSONObject;)V

    .line 249
    .line 250
    .line 251
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 252
    .line 253
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/Sj;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    if-eqz v0, :cond_6

    .line 258
    .line 259
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 260
    .line 261
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/Sj;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/zR/Sj;->sP()V

    .line 266
    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 270
    .line 271
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/Sj;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    if-eqz v2, :cond_6

    .line 276
    .line 277
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 278
    .line 279
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/Sj;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-interface {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/zR/Sj;->Sj(ILjava/lang/String;)V

    .line 288
    .line 289
    .line 290
    goto :goto_6

    .line 291
    :catchall_1
    move-exception v0

    .line 292
    goto :goto_3

    .line 293
    :catchall_2
    move-exception v0

    .line 294
    const/4 v1, 0x0

    .line 295
    :goto_3
    if-eqz v1, :cond_4

    .line 296
    .line 297
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 298
    .line 299
    .line 300
    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 301
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    if-nez v1, :cond_5

    .line 306
    .line 307
    const-string v1, "error "

    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    :goto_5
    const-string v2, "StrategyCenter"

    .line 315
    .line 316
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 320
    .line 321
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/Sj;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    if-eqz v1, :cond_6

    .line 326
    .line 327
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 328
    .line 329
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->sP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/Sj;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    const/4 v2, -0x1

    .line 334
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/zR/Sj;->Sj(ILjava/lang/String;)V

    .line 339
    .line 340
    .line 341
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 342
    .line 343
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/zR/TKC;)Lcom/bytedance/sdk/openadsdk/zR/sP;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    const-string v1, "local_last_update_time"

    .line 348
    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 350
    .line 351
    .line 352
    move-result-wide v2

    .line 353
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/zR/sP;->Sj(Ljava/lang/String;J)V

    .line 354
    .line 355
    .line 356
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/zR/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/zR/TKC;

    .line 357
    .line 358
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/zR/TKC;->Sj()V

    .line 359
    .line 360
    .line 361
    return-void
.end method
